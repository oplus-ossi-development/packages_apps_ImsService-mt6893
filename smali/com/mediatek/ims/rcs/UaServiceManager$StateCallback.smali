.class public abstract Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# instance fields
.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->myHandler:Landroid/os/Handler;

    .line 359
    return-void
.end method


# virtual methods
.method getMyHandler()Landroid/os/Handler;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCallComposerChanged(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 386
    return-void
.end method

.method public onDeregisterInd(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 383
    return-void
.end method

.method public onDeregistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 375
    return-void
.end method

.method public onDeregistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 371
    return-void
.end method

.method public onRegistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 367
    return-void
.end method

.method public onRegistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 363
    return-void
.end method

.method public onReregistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 379
    return-void
.end method
