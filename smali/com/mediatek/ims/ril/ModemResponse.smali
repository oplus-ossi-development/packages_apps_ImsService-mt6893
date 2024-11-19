.class public Lcom/mediatek/ims/ril/ModemResponse;
.super Landroid/hardware/radio/modem/IRadioModemResponse$Stub;
.source "ModemResponse.java"


# instance fields
.field private final mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 30
    invoke-direct {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mediatek/ims/ril/ModemResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 32
    return-void
.end method


# virtual methods
.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 41
    iget-object v0, p0, Lcom/mediatek/ims/ril/ModemResponse;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processRequestAck(I)V

    .line 42
    return-void
.end method

.method public enableModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 48
    return-void
.end method

.method public getBasebandVersionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "version"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public getDeviceIdentityResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imeisv"    # Ljava/lang/String;
    .param p4, "esn"    # Ljava/lang/String;
    .param p5, "meid"    # Ljava/lang/String;

    .line 66
    return-void
.end method

.method public getHardwareConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/modem/HardwareConfig;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "config"    # [Landroid/hardware/radio/modem/HardwareConfig;

    .line 74
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "9dee2319b599d654955c05268c1eed6ca4373b58"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public getModemActivityInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ActivityStatsInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "activityInfo"    # Landroid/hardware/radio/modem/ActivityStatsInfo;

    .line 82
    return-void
.end method

.method public getModemStackStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "isEnabled"    # Z

    .line 89
    return-void
.end method

.method public getRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "radioCapability"    # Landroid/hardware/radio/modem/RadioCapability;

    .line 97
    return-void
.end method

.method public nvReadItemResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "result"    # Ljava/lang/String;

    .line 104
    return-void
.end method

.method public nvResetConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 110
    return-void
.end method

.method public nvWriteCdmaPrlResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 116
    return-void
.end method

.method public nvWriteItemResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 122
    return-void
.end method

.method public requestShutdownResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 128
    return-void
.end method

.method public sendDeviceStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 134
    return-void
.end method

.method public setRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "radioCapability"    # Landroid/hardware/radio/modem/RadioCapability;

    .line 142
    return-void
.end method

.method public setRadioPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Landroid/hardware/radio/RadioResponseInfo;

    .line 148
    return-void
.end method
