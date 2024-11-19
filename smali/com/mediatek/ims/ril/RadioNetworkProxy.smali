.class public Lcom/mediatek/ims/ril/RadioNetworkProxy;
.super Lcom/mediatek/ims/ril/RadioServiceProxy;
.source "RadioNetworkProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioNetworkProxy"


# instance fields
.field private volatile mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 62
    return-void
.end method

.method public getAidl()Landroid/hardware/radio/network/IRadioNetwork;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

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

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    invoke-interface {v0}, Landroid/hardware/radio/network/IRadioNetwork;->responseAcknowledgement()V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 85
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)V
    .locals 2
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "network"    # Landroid/hardware/radio/network/IRadioNetwork;

    .line 41
    iput-object p1, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 42
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mNetworkProxy:Landroid/hardware/radio/network/IRadioNetwork;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/RadioNetworkProxy;->mIsAidl:Z

    .line 44
    const-string v0, "RadioNetworkProxy"

    const-string v1, "AIDL initialized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method
