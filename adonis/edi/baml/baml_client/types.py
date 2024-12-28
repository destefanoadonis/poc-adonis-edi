###############################################################################
#
#  Welcome to Baml! To use this generated code, please run the following:
#
#  $ pip install baml
#
###############################################################################

# This file was generated by BAML: please do not edit it. Instead, edit the
# BAML files and re-generate this code.
#
# ruff: noqa: E501,F401
# flake8: noqa: E501,F401
# pylint: disable=unused-import,line-too-long
# fmt: off
import baml_py
from enum import Enum
from pydantic import BaseModel, ConfigDict
from typing import Dict, Generic, List, Literal, Optional, TypeVar, Union


T = TypeVar('T')
CheckName = TypeVar('CheckName', bound=str)

class Check(BaseModel):
    name: str
    expression: str
    status: str

class Checked(BaseModel, Generic[T,CheckName]):
    value: T
    checks: Dict[CheckName, Check]

def get_checks(checks: Dict[CheckName, Check]) -> List[Check]:
    return list(checks.values())

def all_succeeded(checks: Dict[CheckName, Check]) -> bool:
    return all(check.status == "succeeded" for check in get_checks(checks))



class X12Input(BaseModel):
    release: Literal[5010]
    transaction_set_id: Literal[835]
    data: str

class X12Output(BaseModel):
    release: int
    transaction_set_id: int
    data: "X12_835_5010"

class X12_835_5010(BaseModel):
    ISA_interchange_control_header: "X12_835_5010_ISA_V0"
    IEA_interchange_control_trailer: "X12_835_5010_IEA_V0"
    ST_transaction_set_header: Optional["X12_835_5010_ST_V0"] = None
    BPR_financial_information: "X12_835_5010_BPR_V0"
    TRN_reassociation_trace_number: "X12_835_5010_TRN_V0"
    CUR_foreign_currency_information: Optional["X12_835_5010_CUR_V0"] = None
    REF_receiver_identification: Optional["X12_835_5010_REF_V0"] = None
    DTM_production_date: Optional["X12_835_5010_DTM_V0"] = None
    N1_entity_information: List["X12_835_5010_N1_V0"]
    N2_additional_name_information: List["X12_835_5010_N2_V0"]
    N3_address_information: List["X12_835_5010_N3_V0"]
    N4_geographic_location: List["X12_835_5010_N4_V0"]
    LX_service_line_number: List["X12_835_5010_LX_V0"]
    CLP_claim_payment_information: List["X12_835_5010_CLP_V0"]
    NM1_individual_or_organizational_name: List["X12_835_5010_NM1_V0"]
    MOA_monetary_amount: List["X12_835_5010_MOA_V0"]
    SVC_service_payment_information: List["X12_835_5010_SVC_V0"]
    CAS_claim_adjustment: List["X12_835_5010_CAS_V0"]
    AMT_monetary_amount: List["X12_835_5010_AMT_V0"]

class X12_835_5010_AMT_V0(BaseModel):
    AMT01_amount_qualifier_code: str
    AMT02_monetary_amount: str
    AMT03_credit_debit_flag_code: Optional[str] = None

class X12_835_5010_BPR_V0(BaseModel):
    BPR01_transaction_handling_code: str
    BPR02_monetary_amount: float
    BPR03_credit_debit_flag_code: str
    BPR04_payment_method_code: str
    BPR05_payment_format_code: Optional[str] = None
    BPR06_depository_financial_institution_dfi_identification_number_qualifier: Optional[str] = None
    BPR07_sender_dfi_identifier: Optional[str] = None
    BPR08_account_number_qualifier: Optional[str] = None
    BPR09_sender_bank_account_number_09: Optional[str] = None
    BPR10_payer_identifier: Optional[str] = None
    BPR11_originating_company_supplemental_code: Optional[str] = None
    BPR12_originating_company_payment_type_code: Optional[str] = None
    BPR13_originating_company_payment_type_code: Optional[str] = None
    BPR14_originating_company_payment_type_code: Optional[str] = None
    BPR15_originating_company_payment_type_code: Optional[str] = None
    BPR16_originating_company_payment_type_code: Optional[str] = None
    BPR17_originating_company_payment_type_code: Optional[str] = None
    BPR18_originating_company_payment_type_code: Optional[str] = None
    BPR19_originating_company_payment_type_code: Optional[str] = None
    BPR20_payment_date: Optional[str] = None

class X12_835_5010_CAS_V0(BaseModel):
    CAS01_adjustment_group_code: str
    CAS02_adjustment_reason_code: str
    CAS03_adjustment_amount: str
    CAS04_quantity: Optional[str] = None
    CAS05_additional_reason_code: Optional[str] = None
    CAS06_additional_adjustment_amount: Optional[str] = None

class X12_835_5010_CLP_V0(BaseModel):
    CLP01_patient_control_number: str
    CLP02_claim_status_code: str
    CLP03_total_claim_charge_amount: str
    CLP04_total_claim_payment_amount: str
    CLP05_patient_responsibility_amount: str
    CLP06_total_claim_disallowed_amount: Optional[str] = None
    CLP07_claim_identifier: str
    CLP08_provider_adjustment_amount: Optional[str] = None
    CLP09_claim_frequency_code: str

class X12_835_5010_CUR_V0(BaseModel):
    CUR01_entity_identifier_code: str
    CUR02_currency_code: str
    CUR03_exchange_rate: Optional[str] = None
    CUR04_currency_conversion_type_code: Optional[str] = None
    CUR05_currency_unit_or_basis: Optional[str] = None

class X12_835_5010_DTM_V0(BaseModel):
    DTM01_date_time_qualifier: str
    DTM02_date: str
    DTM03_time: Optional[str] = None

class X12_835_5010_GE_V0(BaseModel):
    GE01_number_of_transaction_sets_included: str
    GE02_group_control_number: str

class X12_835_5010_GS_V0(BaseModel):
    GS01_functional_identifier_code: str
    GS02_application_sender_code: str
    GS03_application_receiver_code: str
    GS04_date: str
    GS05_time: str
    GS06_group_control_number: str
    GS07_responsible_agency_code: str
    GS08_version_release_code: str

class X12_835_5010_IEA_V0(BaseModel):
    IEA01_number_of_functional_groups_included: str
    IEA02_interchange_control_number: str

class X12_835_5010_ISA_V0(BaseModel):
    ISA01_authorization_information_qualifier: str
    ISA02_authorization_information: Optional[str] = None
    ISA03_security_information_qualifier: str
    ISA04_security_information: Optional[str] = None
    ISA05_interchange_id_qualifier_sender: str
    ISA06_interchange_sender_id: Optional[str] = None
    ISA07_interchange_id_qualifier_receiver: str
    ISA08_interchange_receiver_id: str
    ISA09_interchange_date: str
    ISA10_interchange_time: str
    ISA11_repetition_separator: str
    ISA12_interchange_control_version_number: str
    ISA13_interchange_control_number: str
    ISA14_acknowledgment_requested: str
    ISA15_usage_indicator: str
    ISA16_component_element_separator: str

class X12_835_5010_LX_V0(BaseModel):
    LX01_assigned_number: str

class X12_835_5010_MOA_V0(BaseModel):
    MOA01_monetary_amount_qualifier_code: str
    MOA02_monetary_amount: str
    MOA03_reference_identification: Optional[str] = None

class X12_835_5010_N1_V0(BaseModel):
    N101_entity_identifier_code: str
    N102_name: Optional[str] = None
    N103_identification_code_qualifier: Optional[str] = None
    N104_identification_code: Optional[str] = None

class X12_835_5010_N2_V0(BaseModel):
    N201_name: str
    N202_name: Optional[str] = None

class X12_835_5010_N3_V0(BaseModel):
    N301_address_information: str
    N302_address_information: Optional[str] = None

class X12_835_5010_N4_V0(BaseModel):
    N401_city_name: str
    N402_state_or_province_code: Optional[str] = None
    N403_postal_code: Optional[str] = None
    N404_country_code: Optional[str] = None
    N405_location_qualifier: Optional[str] = None
    N406_location_identifier: Optional[str] = None

class X12_835_5010_NM1_V0(BaseModel):
    NM101_entity_identifier_code: str
    NM102_entity_type_qualifier: str
    NM103_last_name_or_organization_name: str
    NM104_first_name: Optional[str] = None
    NM105_middle_initial: Optional[str] = None
    NM106_name_prefix: Optional[str] = None
    NM107_name_suffix: Optional[str] = None
    NM108_identification_code_qualifier: str
    NM109_identification_code: str

class X12_835_5010_PER_V0(BaseModel):
    PER01_contact_function_code: str
    PER02_contact_name: Optional[str] = None
    PER03_communication_number_qualifier: Optional[str] = None
    PER04_communication_number: Optional[str] = None
    PER05_communication_number_qualifier: Optional[str] = None
    PER06_communication_number: Optional[str] = None

class X12_835_5010_REF_V0(BaseModel):
    REF01_reference_identification_qualifier: str
    REF02_reference_identification: str
    REF03_description: Optional[str] = None

class X12_835_5010_SE_V0(BaseModel):
    SE01_segment_count: str
    SE02_transaction_set_control_number: str

class X12_835_5010_ST_V0(BaseModel):
    ST01_transaction_set_identifier_code: str
    ST02_transaction_set_control_number: str

class X12_835_5010_SVC_V0(BaseModel):
    SVC01_composite_medical_procedure_identifier: str
    SVC02_line_item_charge_amount: str
    SVC03_line_item_payment_amount: str
    SVC04_service_quantity: Optional[str] = None
    SVC05_composite_medical_procedure_identifier: Optional[str] = None

class X12_835_5010_TRN_V0(BaseModel):
    TNR01_trace_type_code: str
    TNR03_check_or_eft_trace_number: str
    TNR03_payer_identifier: Optional[str] = None
    TRN04_originating_company_supplemental_code: Optional[str] = None
