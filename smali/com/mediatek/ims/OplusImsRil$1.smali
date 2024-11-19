.class Lcom/mediatek/ims/OplusImsRil$1;
.super Landroid/telephony/ims/aidl/IImsRil$Stub;
.source "OplusImsRil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/OplusImsRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/OplusImsRil;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/OplusImsRil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/OplusImsRil;

    .line 27
    iput-object p1, p0, Lcom/mediatek/ims/OplusImsRil$1;->this$0:Lcom/mediatek/ims/OplusImsRil;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRil$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public commonReqToIms(IILandroid/os/Message;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "requestId"    # I
    .param p3, "reqComplete"    # Landroid/os/Message;

    .line 39
    return-void
.end method

.method public getIImsExtBinder()Lcom/oplus/ims/IImsExt;
    .locals 1

    .line 43
    invoke-static {}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->getInstance()Lcom/mediatek/ims/OplusImsServiceControllerExt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->getInstance()Lcom/mediatek/ims/OplusImsServiceControllerExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/OplusImsServiceControllerExt;->getIImsExt()Lcom/oplus/ims/IImsExt;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerIndication(Landroid/telephony/ims/aidl/IImsRilInd;)V
    .locals 0
    .param p1, "ind"    # Landroid/telephony/ims/aidl/IImsRilInd;

    .line 35
    return-void
.end method

.method public unRegisterIndication(Landroid/telephony/ims/aidl/IImsRilInd;)V
    .locals 0
    .param p1, "ind"    # Landroid/telephony/ims/aidl/IImsRilInd;

    .line 31
    return-void
.end method
