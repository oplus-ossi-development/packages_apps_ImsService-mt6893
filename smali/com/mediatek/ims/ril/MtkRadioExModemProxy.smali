.class public Lcom/mediatek/ims/ril/MtkRadioExModemProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExModemProxy.java"


# instance fields
.field private volatile mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 62
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgementMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 84
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 87
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 89
    :goto_0
    return-void
.end method

.method public runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "nafFqdn"    # Ljava/lang/String;
    .param p3, "nafSecureProtocolId"    # Ljava/lang/String;
    .param p4, "forceRun"    # Z
    .param p5, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    const/4 v7, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZII)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 99
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 102
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->runGbaAuthentication(ILjava/lang/String;Ljava/lang/String;ZI)V

    .line 104
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;)V
    .locals 1
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "modem"    # Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 42
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 43
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mIsAidl:Z

    .line 45
    return-void
.end method

.method public setVendorSetting(IILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "setting"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mModemProxyMtk:Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/modem/IMtkRadioExModem;->setVendorSetting(IILjava/lang/String;I)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 114
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExModemProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 117
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVendorSetting(IILjava/lang/String;)V

    .line 119
    :goto_0
    return-void
.end method
