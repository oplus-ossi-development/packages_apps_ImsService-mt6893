.class Lcom/mediatek/ims/rcs/UaServiceManager$5;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/RcsUaService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 603
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 3
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 606
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$900(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/ImsEventCallback;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$802(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/Client;)Lcom/mediatek/ims/rcsua/Client;

    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$800(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1000(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcsua/Client;->openSipChannel(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$002(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/SipChannel;)Lcom/mediatek/ims/rcsua/SipChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v2, "openSipChannel exception"

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1200(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 615
    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1200(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    .line 617
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1202(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/AcsEventCallback;)Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 619
    :cond_0
    return-void
.end method

.method public serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 5
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 623
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceDisconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$002(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/SipChannel;)Lcom/mediatek/ims/rcsua/SipChannel;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$800(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$802(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/Client;)Lcom/mediatek/ims/rcsua/Client;

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->stopService()V

    .line 632
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$402(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 634
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 635
    .local v0, "options":Landroid/os/Bundle;
    const/4 v1, 0x1

    const-string v2, "OPTION_ROI_SUPPORT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 636
    iget-object v1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1300(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$600(Lcom/mediatek/ims/rcs/UaServiceManager;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$5;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1400(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$402(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 637
    return-void
.end method
