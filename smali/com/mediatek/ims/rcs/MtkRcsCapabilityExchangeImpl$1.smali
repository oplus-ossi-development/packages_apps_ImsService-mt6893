.class Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;
.super Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;
.source "MtkRcsCapabilityExchangeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    .line 169
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "reasonCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$100(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 197
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method public onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "cb"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 203
    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onRequestPublishCapabilities(I)V
    .locals 4
    .param p1, "type"    # I

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPublishCapabilities >> type["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$100(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 178
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method public onUnpublish()V
    .locals 4

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$100(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onUnpublish()V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 187
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method
