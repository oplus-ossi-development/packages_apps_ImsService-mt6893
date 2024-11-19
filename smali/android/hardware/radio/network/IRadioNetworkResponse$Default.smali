.class public Landroid/hardware/radio/network/IRadioNetworkResponse$Default;
.super Ljava/lang/Object;
.source "IRadioNetworkResponse.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetworkResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetworkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeRequest(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "networkTypeBitmap"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public getAvailableBandModesResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "bandModes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public getAvailableNetworksResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/OperatorInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "networkInfos"    # [Landroid/hardware/radio/network/OperatorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public getBarringInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "cellIdentity"    # Landroid/hardware/radio/network/CellIdentity;
    .param p3, "barringInfos"    # [Landroid/hardware/radio/network/BarringInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public getCellInfoListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/CellInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "cellInfo"    # [Landroid/hardware/radio/network/CellInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public getDataRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "dataRegResponse"    # Landroid/hardware/radio/network/RegStateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public getImsRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isRegistered"    # Z
    .param p3, "ratFamily"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkSelectionModeResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "manual"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public getOperatorResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "longName"    # Ljava/lang/String;
    .param p3, "shortName"    # Ljava/lang/String;
    .param p4, "numeric"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public getSignalStrengthResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/SignalStrength;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "signalStrength"    # Landroid/hardware/radio/network/SignalStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public getSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/RadioAccessSpecifier;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "specifiers"    # [Landroid/hardware/radio/network/RadioAccessSpecifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public getUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "usageSetting"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public getVoiceRadioTechnologyResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "rat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public getVoiceRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "voiceRegResponse"    # Landroid/hardware/radio/network/RegStateResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public setBandModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public setBarringPasswordResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public setCellInfoListRateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public setIndicationFilterResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public setLocationUpdatesResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public setNrDualConnectivityStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public setSuppServiceNotificationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public setSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public setUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public startNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public stopNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method
