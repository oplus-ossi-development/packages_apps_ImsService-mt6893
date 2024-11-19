.class Lcom/mediatek/ims/rcs/UaServiceManager$3;
.super Lcom/mediatek/ims/rcsua/ImsEventCallback;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ccFeature:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 412
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/ImsEventCallback;-><init>()V

    .line 527
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->ccFeature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDeregStart(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 510
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregStart >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 512
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 513
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$3$7;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$3$7;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 520
    :cond_1
    return-void
.end method

.method public onDeregistered(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 464
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 466
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 467
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$3$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$3$4;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 474
    :cond_1
    return-void
.end method

.method public onDeregistering(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 450
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregistering >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 452
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 453
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$3$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$3$3;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 460
    :cond_1
    return-void
.end method

.method public onRegistered(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 430
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onRegistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$502(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 434
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 435
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$3$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$3$2;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 446
    :cond_2
    return-void
.end method

.method public onRegistering(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 416
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onRegistering >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 418
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 419
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$3$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$3$1;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 426
    :cond_1
    return-void
.end method

.method public onReregistered(I)V
    .locals 5
    .param p1, "mode"    # I

    .line 478
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onReregistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 480
    .local v1, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v2

    .line 481
    .local v2, "hdlr":Landroid/os/Handler;
    :goto_1
    new-instance v3, Lcom/mediatek/ims/rcs/UaServiceManager$3$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/mediatek/ims/rcs/UaServiceManager$3$5;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    .end local v1    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v2    # "hdlr":Landroid/os/Handler;
    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    .line 491
    .local v0, "newCap":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/rcsua/Capability;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 492
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    const-string v2, "+g.gsma.callcomposer"

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 493
    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$500(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v2}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 494
    :cond_3
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$200(Lcom/mediatek/ims/rcs/UaServiceManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;

    .line 495
    .local v2, "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->getMyHandler()Landroid/os/Handler;

    move-result-object v3

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/os/Handler;

    move-result-object v3

    .line 496
    .local v3, "hdlr":Landroid/os/Handler;
    :goto_3
    new-instance v4, Lcom/mediatek/ims/rcs/UaServiceManager$3$6;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$3$6;-><init>(Lcom/mediatek/ims/rcs/UaServiceManager$3;Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    .end local v2    # "callback":Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
    .end local v3    # "hdlr":Landroid/os/Handler;
    goto :goto_2

    .line 504
    :cond_5
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$502(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;

    .line 506
    :cond_6
    return-void
.end method

.method public onVopsIndication(I)V
    .locals 3
    .param p1, "vops"    # I

    .line 524
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onVopsIndication >> vops["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 525
    return-void
.end method
