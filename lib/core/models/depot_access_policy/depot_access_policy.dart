import 'package:cost_client/core/models/common/value_object/value_object.dart';
import 'package:cost_client/generated/depot_access_policy.pb.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'depot_access_policy.freezed.dart';

@freezed
sealed class DepotAccessPolicy with _$DepotAccessPolicy {
  const DepotAccessPolicy._();
  const factory DepotAccessPolicy.unrestricted() = DepotAccessUnrestricted;

  const factory DepotAccessPolicy.restricted(
    UniqueId depotId,
  ) = DepotAccessRestricted;

  const factory DepotAccessPolicy.preferred(
    UniqueId depotId,
  ) = DepotAccessPreferred;

  factory DepotAccessPolicy.fromDto(DepotAccessPolicyDto dto) {
    switch (dto.whichPolicy()) {
      case DepotAccessPolicyDto_Policy.unrestricted:
        return const DepotAccessPolicy.unrestricted();
      case DepotAccessPolicyDto_Policy.restricted:
        return DepotAccessPolicy.restricted(
          UniqueId.fromUniqueString(dto.restricted.depotId),
        );
      case DepotAccessPolicyDto_Policy.preferred:
        return DepotAccessPolicy.preferred(
          UniqueId.fromUniqueString(dto.preferred.depotId),
        );
      case DepotAccessPolicyDto_Policy.notSet:
        throw UnimplementedError();
    }
  }

  DepotAccessPolicyDto toDto() {
    return switch (this) {
      DepotAccessUnrestricted() => DepotAccessPolicyDto(
          unrestricted: DepotAccessUnrestrictedDto(),
        ),
      DepotAccessRestricted restriction => DepotAccessPolicyDto(
          restricted: DepotAccessRestrictedDto(
            depotId: restriction.depotId.getOrCrash,
          ),
        ),
      DepotAccessPreferred preferrence => DepotAccessPolicyDto(
          preferred: DepotAccessPreferredDto(
            depotId: preferrence.depotId.getOrCrash,
          ),
        ),
    };
  }
}
