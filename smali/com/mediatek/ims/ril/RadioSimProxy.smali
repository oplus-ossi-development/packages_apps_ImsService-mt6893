.class public Lcom/mediatek/ims/ril/RadioSimProxy;
.super Lcom/mediatek/ims/ril/RadioServiceProxy;
.source "RadioSimProxy.java"


# instance fields
.field private volatile mSimProxy:Landroid/hardware/radio/sim/IRadioSim;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    .line 65
    return-void
.end method

.method public getAidl()Landroid/hardware/radio/sim/IRadioSim;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    return-object v0
.end method

.method public getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/hardware/radio/sim/IRadioSim;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/hardware/radio/V1_0/IRadio;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    invoke-interface {v0}, Landroid/hardware/radio/sim/IRadioSim;->responseAcknowledgement()V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 88
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/sim/IRadioSim;)V
    .locals 1
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "sim"    # Landroid/hardware/radio/sim/IRadioSim;

    .line 45
    iput-object p1, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 46
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mIsAidl:Z

    .line 48
    return-void
.end method

.method public setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "serial"    # I
    .param p2, "facility"    # Ljava/lang/String;
    .param p3, "lockState"    # Z
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mSimProxy:Landroid/hardware/radio/sim/IRadioSim;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/hardware/radio/sim/IRadioSim;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/RadioSimProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/hardware/radio/V1_0/IRadio;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 129
    :goto_0
    return-void
.end method
