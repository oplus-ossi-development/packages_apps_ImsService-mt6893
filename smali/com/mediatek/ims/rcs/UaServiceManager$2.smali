.class Lcom/mediatek/ims/rcs/UaServiceManager$2;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;->registerSipCallback(Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

.field final synthetic val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 238
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iput-object p2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$000(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;->onAvailable()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager$SipCallback;->onUnavailable()V

    .line 245
    :goto_0
    return-void
.end method
