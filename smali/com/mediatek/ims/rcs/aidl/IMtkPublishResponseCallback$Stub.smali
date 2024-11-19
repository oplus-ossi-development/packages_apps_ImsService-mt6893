.class public abstract Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub;
.super Landroid/os/Binder;
.source "IMtkPublishResponseCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCommandError:I = 0x1

.field static final TRANSACTION_onNetworkRespHeader:I = 0x3

.field static final TRANSACTION_onNetworkResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.mediatek.ims.rcs.aidl.IMtkPublishResponseCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "com.mediatek.ims.rcs.aidl.IMtkPublishResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    move-object/from16 v6, p0

    move/from16 v7, p1

    const-string v8, "com.mediatek.ims.rcs.aidl.IMtkPublishResponseCallback"

    .line 59
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v7, v9, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 60
    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    move-object/from16 v10, p2

    .line 62
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 70
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 109
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 66
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v9

    .line 95
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 97
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 99
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 101
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 103
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 104
    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub;->onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V

    .line 105
    goto :goto_1

    .line 84
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub;->onNetworkResponse(IILjava/lang/String;)V

    .line 90
    goto :goto_1

    .line 75
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/rcs/aidl/IMtkPublishResponseCallback$Stub;->onCommandError(II)V

    .line 79
    nop

    .line 112
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_1
    return v9

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
