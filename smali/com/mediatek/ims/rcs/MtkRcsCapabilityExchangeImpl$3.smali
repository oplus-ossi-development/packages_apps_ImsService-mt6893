.class Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;
.super Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;
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

    .line 255
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-direct {p0}, Lcom/mediatek/ims/rcs/aidl/IMtkSubscribeResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandError(II)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 259
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onCommandError >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 261
    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    invoke-interface {v0, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onCommandError >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    return-void
.end method

.method public onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;
    .param p4, "reasonHeaderCause"    # I
    .param p5, "reasonHeaderText"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 292
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onNetworkRespHeader >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 294
    if-eqz v0, :cond_0

    .line 296
    :try_start_0
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onNetworkRespHeader >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 301
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNetworkResponse(IILjava/lang/String;)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 274
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onNetworkResponse >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 276
    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onNetworkResponse >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    div-int/lit8 v1, p2, 0x64

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void
.end method

.method public onNotifyCapabilitiesUpdate(ILjava/util/List;)V
    .locals 5
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p2, "pidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 306
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onNotifyCapabilitiesUpdate >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 308
    if-eqz v0, :cond_0

    .line 310
    :try_start_0
    invoke-interface {v0, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onNotifyCapabilitiesUpdate >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 315
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public onResourceTerminated(ILjava/util/List;)V
    .locals 7
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;)V"
        }
    .end annotation

    .line 319
    .local p2, "terminatedList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 320
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onResourceTerminated >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 322
    if-eqz v0, :cond_1

    .line 324
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactTerminatedReason;

    .line 326
    .local v3, "terminated":Landroid/telephony/ims/RcsContactTerminatedReason;
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactTerminatedReason;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactTerminatedReason;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    nop

    .end local v3    # "terminated":Landroid/telephony/ims/RcsContactTerminatedReason;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    goto :goto_0

    .line 329
    :cond_0
    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onResourceTerminated(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    goto :goto_1

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onResourceTerminated >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 334
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public onTerminated(ILjava/lang/String;J)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "retryAfterMillis"    # J

    .line 338
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 339
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onTerminated >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 341
    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    invoke-interface {v0, p2, p3, p4}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onTerminated(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onTerminated >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 348
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/rcs/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_0
    return-void
.end method
