.class public final synthetic Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {p1}, Lcom/mediatek/ims/ImsService;->lambda$setRcsFeatureCallback$6(Lcom/mediatek/ims/rcs/UaServiceManager;)Z

    move-result p1

    return p1
.end method
