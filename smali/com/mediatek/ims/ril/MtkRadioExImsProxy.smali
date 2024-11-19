.class public Lcom/mediatek/ims/ril/MtkRadioExImsProxy;
.super Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;
.source "MtkRadioExImsProxy.java"


# instance fields
.field private volatile mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    return-void
.end method


# virtual methods
.method public acknowledgeLastIncomingCdmaSmsEx(IZI)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Landroid/hardware/radio/messaging/CdmaSmsAck;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/CdmaSmsAck;-><init>()V

    .line 143
    .local v0, "msg":Landroid/hardware/radio/messaging/CdmaSmsAck;
    iput-boolean p2, v0, Landroid/hardware/radio/messaging/CdmaSmsAck;->errorClass:Z

    .line 144
    iput p3, v0, Landroid/hardware/radio/messaging/CdmaSmsAck;->smsCauseCode:I

    .line 145
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsAck;I)V

    .line 147
    .end local v0    # "msg":Landroid/hardware/radio/messaging/CdmaSmsAck;
    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/CdmaSmsAck;-><init>()V

    .line 150
    .local v0, "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    xor-int/lit8 v1, p2, 0x1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;->errorClass:I

    .line 151
    iput p3, v0, Landroid/hardware/radio/V1_0/CdmaSmsAck;->smsCauseCode:I

    .line 152
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 154
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 157
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->acknowledgeLastIncomingCdmaSmsEx(ILandroid/hardware/radio/V1_0/CdmaSmsAck;)V

    .line 160
    .end local v0    # "msg":Landroid/hardware/radio/V1_0/CdmaSmsAck;
    :goto_0
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsEx(IZI)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->acknowledgeLastIncomingGsmSmsEx(IZII)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 184
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 187
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->acknowledgeLastIncomingGsmSmsEx(IZI)V

    .line 189
    :goto_0
    return-void
.end method

.method public cancelUssi(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->cancelUssi(II)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 440
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->cancelUssi(I)V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 443
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->cancelUssi(I)V

    .line 445
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/mediatek/ims/ril/MtkRadioExServiceProxy;->clear()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 68
    return-void
.end method

.method public conferenceDial(I[Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "participants"    # [Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "isVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 655
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;-><init>()V

    .line 657
    .local v0, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->clir:I

    .line 658
    iput-boolean p4, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->isVideoCall:Z

    .line 659
    iput-object p2, v0, Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;->dialNumbers:[Ljava/lang/String;

    .line 661
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;I)V

    .line 663
    .end local v0    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/voice/ConferenceDial;
    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 664
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;-><init>()V

    .line 666
    .local v0, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->clir:I

    .line 667
    iput-boolean p4, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->isVideoCall:Z

    .line 668
    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p2, v1

    .line 669
    .local v3, "dialNumber":Ljava/lang/String;
    iget-object v4, v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v3    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 677
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;)V

    .line 678
    .end local v0    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V3_0/ConferenceDial;
    goto :goto_2

    .line 679
    :cond_3
    new-instance v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;

    invoke-direct {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;-><init>()V

    .line 681
    .local v0, "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    iput p3, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->clir:I

    .line 682
    iput-boolean p4, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->isVideoCall:Z

    .line 683
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    .line 684
    .restart local v3    # "dialNumber":Ljava/lang/String;
    iget-object v4, v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;->dialNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v3    # "dialNumber":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 691
    :cond_4
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 692
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->conferenceDial(ILvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;)V

    .line 694
    .end local v0    # "dialInfo":Lvendor/mediatek/hardware/mtkradioex/V2_0/ConferenceDial;
    :goto_2
    return-void
.end method

.method public controlCall(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->controlCall(IIII)V

    goto :goto_0

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 712
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlCall(III)V

    goto :goto_0

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 715
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->controlCall(III)V

    .line 717
    :goto_0
    return-void
.end method

.method public controlImsConferenceCallMember(IIILjava/lang/String;I)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "controlType"    # I
    .param p3, "confCallId"    # I
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->controlImsConferenceCallMember(IIILjava/lang/String;II)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 737
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 740
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->controlImsConferenceCallMember(IIILjava/lang/String;I)V

    .line 742
    :goto_0
    return-void
.end method

.method public dialWithSipUri(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->dialWithSipUri(ILjava/lang/String;I)V

    goto :goto_0

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 759
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->dialWithSipUri(ILjava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 762
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->dialWithSipUri(ILjava/lang/String;)V

    .line 764
    :goto_0
    return-void
.end method

.method public eccRedialApprove(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "approve"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 777
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->eccRedialApprove(IIII)V

    goto :goto_0

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 782
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->eccRedialApprove(III)V

    goto :goto_0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 785
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->eccRedialApprove(III)V

    .line 787
    :goto_0
    return-void
.end method

.method public forceReleaseCall(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 797
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->forceReleaseCall(III)V

    goto :goto_0

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 802
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->forceReleaseCall(II)V

    goto :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 805
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->forceReleaseCall(II)V

    .line 807
    :goto_0
    return-void
.end method

.method public getAidl()Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    return-object v0
.end method

.method public getBarringCalls(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getBarringCalls(III)V

    .line 518
    :cond_1
    return-void
.end method

.method public getImsCfgFeatureValue(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgFeatureValue(IIII)V

    goto :goto_0

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 982
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgFeatureValue(III)V

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 985
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgFeatureValue(III)V

    .line 987
    :goto_0
    return-void
.end method

.method public getImsCfgProvisionValue(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 997
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 999
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgProvisionValue(III)V

    goto :goto_0

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1004
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgProvisionValue(II)V

    goto :goto_0

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1007
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgProvisionValue(II)V

    .line 1009
    :goto_0
    return-void
.end method

.method public getImsCfgResourceCapValue(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1021
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getImsCfgResourceCapValue(III)V

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1026
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getImsCfgResourceCapValue(II)V

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1029
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getImsCfgResourceCapValue(II)V

    .line 1031
    :goto_0
    return-void
.end method

.method public getVoiceDomainPreference(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getVoiceDomainPreference(II)V

    goto :goto_0

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1050
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getVoiceDomainPreference(I)V

    goto :goto_0

    .line 1052
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1053
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getVoiceDomainPreference(I)V

    .line 1055
    :goto_0
    return-void
.end method

.method public getXcapStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->getXcapStatus(II)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 458
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->getXcapStatus(I)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 461
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->getXcapStatus(I)V

    .line 463
    :goto_0
    return-void
.end method

.method public imsBearerStateConfirm(IIII)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->imsBearerStateConfirm(IIIII)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 96
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsBearerStateConfirm(IIII)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 99
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsBearerStateConfirm(IIII)V

    .line 101
    :goto_0
    return-void
.end method

.method public imsEctCommand(ILjava/lang/String;I)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->imsEctCommand(ILjava/lang/String;II)V

    goto :goto_0

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 825
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->imsEctCommand(ILjava/lang/String;I)V

    goto :goto_0

    .line 827
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 828
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->imsEctCommand(ILjava/lang/String;I)V

    .line 830
    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pullCall(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "isVideoCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 841
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->pullCall(ILjava/lang/String;ZI)V

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 848
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->pullCall(ILjava/lang/String;Z)V

    goto :goto_0

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 851
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->pullCall(ILjava/lang/String;Z)V

    .line 853
    :goto_0
    return-void
.end method

.method public querySsacStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1229
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1231
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->querySsacStatus(II)V

    goto :goto_0

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1235
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1236
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->querySsacStatus(I)V

    goto :goto_0

    .line 1238
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1239
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->querySsacStatus(I)V

    .line 1241
    :goto_0
    return-void
.end method

.method public queryVopsStatus(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->queryVopsStatus(II)V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 398
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->queryVopsStatus(I)V

    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 401
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->queryVopsStatus(I)V

    .line 403
    :goto_0
    return-void
.end method

.method public responseAcknowledgementMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1251
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1253
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1257
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    goto :goto_0

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1260
    invoke-interface {v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->responseAcknowledgementMtk()V

    .line 1262
    :goto_0
    return-void
.end method

.method public rttModifyRequestResponse(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->rttModifyRequestResponse(IIII)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 279
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->rttModifyRequestResponse(III)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 282
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->rttModifyRequestResponse(III)V

    .line 284
    :goto_0
    return-void
.end method

.method public sendImsSmsEx(ILjava/lang/String;Ljava/lang/String;[BZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smscPdu"    # Ljava/lang/String;
    .param p3, "gsmPdu"    # Ljava/lang/String;
    .param p4, "cdmaPdu"    # [B
    .param p5, "retry"    # Z
    .param p6, "messageRef"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 213
    new-instance v0, Landroid/hardware/radio/messaging/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/messaging/ImsSmsMessage;-><init>()V

    .line 215
    .local v0, "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 216
    iput v2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->tech:I

    goto :goto_0

    .line 217
    :cond_1
    if-eqz p4, :cond_4

    .line 218
    iput v1, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->tech:I

    .line 223
    :goto_0
    iput-boolean p5, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->retry:Z

    .line 224
    iput p6, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->messageRef:I

    .line 225
    if-eqz p3, :cond_2

    .line 226
    new-array v3, v2, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 227
    new-array v3, v1, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 228
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessageAidl(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/messaging/GsmSmsMessage;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 230
    :cond_2
    if-eqz p4, :cond_3

    .line 231
    new-array v3, v1, [Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 232
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessageAidl([B)Landroid/hardware/radio/messaging/CdmaSmsMessage;

    move-result-object v4

    aput-object v4, v3, v2

    iput-object v3, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->cdmaMessage:[Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 233
    new-array v2, v2, [Landroid/hardware/radio/messaging/GsmSmsMessage;

    iput-object v2, v0, Landroid/hardware/radio/messaging/ImsSmsMessage;->gsmMessage:[Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 235
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendImsSmsEx(ILandroid/hardware/radio/messaging/ImsSmsMessage;I)V

    .line 236
    .end local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    goto :goto_1

    .line 220
    .restart local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :cond_4
    return-void

    .line 237
    .end local v0    # "msg":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :cond_5
    new-instance v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/ImsSmsMessage;-><init>()V

    .line 239
    .local v0, "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    iput-boolean p5, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->retry:Z

    .line 240
    iput p6, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->messageRef:I

    .line 241
    if-eqz p3, :cond_6

    .line 242
    iput v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 243
    iget-object v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->gsmMessage:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertToHalGsmSmsMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/V1_0/GsmSmsMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_6
    if-eqz p4, :cond_7

    .line 246
    const/4 v1, 0x2

    iput v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->tech:I

    .line 247
    iget-object v1, v0, Landroid/hardware/radio/V1_0/ImsSmsMessage;->cdmaMessage:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalCdmaSmsMessage([B)Landroid/hardware/radio/V1_0/CdmaSmsMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_7
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 250
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 251
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    goto :goto_1

    .line 253
    :cond_8
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 254
    invoke-interface {v1, p1, v0}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendImsSmsEx(ILandroid/hardware/radio/V1_0/ImsSmsMessage;)V

    .line 257
    .end local v0    # "msg":Landroid/hardware/radio/V1_0/ImsSmsMessage;
    :goto_1
    return-void
.end method

.method public sendRttModifyRequest(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "newMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendRttModifyRequest(IIII)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 302
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendRttModifyRequest(III)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 305
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRttModifyRequest(III)V

    .line 307
    :goto_0
    return-void
.end method

.method public sendRttText(IIILjava/lang/String;)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "lenOfString"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendRttText(IIILjava/lang/String;I)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 326
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendRttText(IIILjava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 329
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendRttText(IIILjava/lang/String;)V

    .line 331
    :goto_0
    return-void
.end method

.method public sendUssi(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "ussiString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->sendUssi(ILjava/lang/String;I)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 477
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->sendUssi(ILjava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 480
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->sendUssi(ILjava/lang/String;)V

    .line 482
    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;)V
    .locals 1
    .param p1, "halVersion"    # Lcom/android/internal/telephony/HalVersion;
    .param p2, "ims"    # Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 48
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    .line 49
    iput-object p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mIsAidl:Z

    .line 51
    return-void
.end method

.method public setBarringCalls(I[Lcom/mediatek/ims/MtkImsBarringCall;)V
    .locals 4
    .param p1, "serial"    # I
    .param p2, "calls"    # [Lcom/mediatek/ims/MtkImsBarringCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    array-length v0, p2

    new-array v0, v0, [Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    .line 533
    .local v0, "bCalls":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 534
    new-instance v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;

    invoke-direct {v2}, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;-><init>()V

    aput-object v2, v0, v1

    .line 535
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->status:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->status:I

    .line 536
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->serviceClass:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->serviceClass:I

    .line 537
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->toa:I

    iput v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->toa:I

    .line 538
    aget-object v2, v0, v1

    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    if-eqz v3, :cond_1

    aget-object v3, p2, v1

    iget-object v3, v3, Lcom/mediatek/ims/MtkImsBarringCall;->number:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    iput-object v3, v2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;->number:Ljava/lang/String;

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v0, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setBarringCalls(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;I)V

    .line 544
    .end local v0    # "bCalls":[Lvendor/mediatek/hardware/mtkradioex/ims/ImsBarringCall;
    :cond_3
    return-void
.end method

.method public setCallAdditionalInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    .local p2, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 868
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 870
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 871
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 872
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 873
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 874
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 875
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 877
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setCallAdditionalInfo(I[Ljava/lang/String;I)V

    .line 879
    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 881
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 884
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setCallAdditionalInfo(ILjava/util/ArrayList;)V

    .line 886
    :goto_0
    return-void
.end method

.method public setImsBearerNotification(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsBearerNotification(III)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 118
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsBearerNotification(II)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 121
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsBearerNotification(II)V

    .line 123
    :goto_0
    return-void
.end method

.method public setImsCallMode(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 896
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCallMode(III)V

    goto :goto_0

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 903
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCallMode(II)V

    goto :goto_0

    .line 905
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 906
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCallMode(II)V

    .line 908
    :goto_0
    return-void
.end method

.method public setImsCfgFeatureValue(IIIII)V
    .locals 8
    .param p1, "serial"    # I
    .param p2, "featureId"    # I
    .param p3, "network"    # I
    .param p4, "value"    # I
    .param p5, "isLast"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1071
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1072
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCfgFeatureValue(IIIIII)V

    goto :goto_0

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1077
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCfgFeatureValue(IIIII)V

    goto :goto_0

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v1, v0

    check-cast v1, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1081
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCfgFeatureValue(IIIII)V

    .line 1084
    :goto_0
    return-void
.end method

.method public setImsCfgProvisionValue(IILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "configId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1095
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsCfgProvisionValue(IILjava/lang/String;I)V

    goto :goto_0

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1101
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1102
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsCfgProvisionValue(IILjava/lang/String;)V

    goto :goto_0

    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1105
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsCfgProvisionValue(IILjava/lang/String;)V

    .line 1107
    :goto_0
    return-void
.end method

.method public setImsRegistrationReport(I)V
    .locals 2
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImsRegistrationReport(II)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 419
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImsRegistrationReport(I)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 422
    invoke-interface {v0, p1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImsRegistrationReport(I)V

    .line 424
    :goto_0
    return-void
.end method

.method public setImscfg(IZZZZZZ)V
    .locals 11
    .param p1, "serial"    # I
    .param p2, "volteEnable"    # Z
    .param p3, "vilteEnable"    # Z
    .param p4, "vowifiEnable"    # Z
    .param p5, "viwifiEnable"    # Z
    .param p6, "smsEnable"    # Z
    .param p7, "eimsEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1123
    move-object v0, p0

    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1125
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1126
    iget-object v2, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v10, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setImscfg(IZZZZZZI)V

    goto :goto_0

    .line 1129
    :cond_1
    iget-object v1, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1130
    iget-object v1, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v2, v1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1131
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setImscfg(IZZZZZZ)V

    goto :goto_0

    .line 1138
    :cond_2
    iget-object v1, v0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    move-object v2, v1

    check-cast v2, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1139
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setImscfg(IZZZZZZ)V

    .line 1146
    :goto_0
    return-void
.end method

.method public setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "serial"    # I
    .param p2, "keys"    # Ljava/lang/String;
    .param p3, "values"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1206
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1213
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1215
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1216
    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setModemImsCfg(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1218
    :goto_0
    return-void
.end method

.method public setRttMode(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setRttMode(III)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 350
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setRttMode(II)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 353
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setRttMode(II)V

    .line 355
    :goto_0
    return-void
.end method

.method public setSipHeader(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    .local p2, "arrListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 922
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 923
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 924
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 925
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 927
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setSipHeader(I[Ljava/lang/String;I)V

    .line 929
    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 931
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setSipHeader(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 934
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSipHeader(ILjava/util/ArrayList;)V

    .line 936
    :goto_0
    return-void
.end method

.method public setSipHeaderReport(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    .local p2, "arrListData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 950
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 951
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 953
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setSipHeaderReport(I[Ljava/lang/String;I)V

    .line 955
    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 957
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setSipHeaderReport(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 959
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 960
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setSipHeaderReport(ILjava/util/ArrayList;)V

    .line 962
    :goto_0
    return-void
.end method

.method public setVoiceDomainPreference(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "vdp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1158
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setVoiceDomainPreference(III)V

    goto :goto_0

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1163
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setVoiceDomainPreference(II)V

    goto :goto_0

    .line 1165
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1166
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setVoiceDomainPreference(II)V

    .line 1168
    :goto_0
    return-void
.end method

.method public setWfcProfile(II)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "wfcPreference"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setWfcProfile(III)V

    goto :goto_0

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1185
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 1186
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setWfcProfile(II)V

    goto :goto_0

    .line 1188
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 1189
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setWfcProfile(II)V

    .line 1191
    :goto_0
    return-void
.end method

.method public setupXcapUserAgentString(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->setupXcapUserAgentString(ILjava/lang/String;I)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 498
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->setupXcapUserAgentString(ILjava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 501
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->setupXcapUserAgentString(ILjava/lang/String;)V

    .line 503
    :goto_0
    return-void
.end method

.method public toggleRttAudioIndication(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "callId"    # I
    .param p3, "audio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->toggleRttAudioIndication(IIII)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 373
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->toggleRttAudioIndication(III)V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 376
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->toggleRttAudioIndication(III)V

    .line 378
    :goto_0
    return-void
.end method

.method public videoCallAccept(III)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "videoMode"    # I
    .param p3, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->videoCallAccept(IIII)V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 563
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->videoCallAccept(III)V

    goto :goto_0

    .line 565
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 566
    invoke-interface {v0, p1, p2, p3}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->videoCallAccept(III)V

    .line 568
    :goto_0
    return-void
.end method

.method public videoRingtoneEventRequest(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    .local p2, "event":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 584
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 585
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 586
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 588
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-interface {v2, p1, v0, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->videoRingtoneEventRequest(I[Ljava/lang/String;I)V

    .line 590
    .end local v0    # "data":[Ljava/lang/String;
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 592
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;

    .line 595
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_2/IMtkRadioEx;->videoRingtoneEventRequest(ILjava/util/ArrayList;)V

    .line 597
    :goto_0
    return-void
.end method

.method public vtDial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDialAidl(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/voice/Dial;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->vtDial(ILandroid/hardware/radio/voice/Dial;I)V

    goto :goto_0

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 614
    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 617
    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/RILUtils;->convertToHalDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Landroid/hardware/radio/V1_0/Dial;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->vtDial(ILandroid/hardware/radio/V1_0/Dial;)V

    .line 619
    :goto_0
    return-void
.end method

.method public vtDialWithSipUri(ILjava/lang/String;)V
    .locals 2
    .param p1, "serial"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mImsProxyMtk:Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExIms;->vtDialWithSipUri(ILjava/lang/String;I)V

    goto :goto_0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->MTK_RADIO_HAL_VERSION_3_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;

    .line 635
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V3_0/IMtkRadioEx;->vtDialWithSipUri(ILjava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsProxy;->mRadioProxyMtk:Landroid/hidl/base/V1_0/IBase;

    check-cast v0, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    .line 638
    invoke-interface {v0, p1, p2}, Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;->vtDialWithSipUri(ILjava/lang/String;)V

    .line 640
    :goto_0
    return-void
.end method
