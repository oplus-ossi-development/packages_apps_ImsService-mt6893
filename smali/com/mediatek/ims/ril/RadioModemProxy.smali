.class public Lcom/mediatek/ims/ril/RadioModemProxy;
.super Lcom/mediatek/ims/ril/RadioServiceProxy;
.source "RadioModemProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioModemProxy"


# instance fields
.field private volatile mModemProxy:Landroid/hardware/radio/modem/IRadioModem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/mediatek/ims/ril/RadioServiceProxy;->clear()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    .line 60
    return-void
.end method

.method public getAidl()Landroid/hardware/radio/modem/IRadioModem;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

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

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/RadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    invoke-interface {v0}, Landroid/hardware/radio/modem/IRadioModem;->responseAcknowledgement()V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mRadioProxy:Landroid/hardware/radio/V1_0/IRadio;

    invoke-interface {v0}, Landroid/hardware/radio/V1_0/IRadio;->responseAcknowledgement()V

    .line 83
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)V
    .locals 2
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "modem"    # Landroid/hardware/radio/modem/IRadioModem;

    .line 39
    iput-object p1, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 40
    iput-object p2, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mModemProxy:Landroid/hardware/radio/modem/IRadioModem;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/RadioModemProxy;->mIsAidl:Z

    .line 42
    const-string v0, "RadioModemProxy"

    const-string v1, "AIDL initialized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method
