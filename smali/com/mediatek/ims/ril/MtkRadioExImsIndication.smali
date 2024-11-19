.class public Lcom/mediatek/ims/ril/MtkRadioExImsIndication;
.super Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;
.source "MtkRadioExImsIndication.java"


# instance fields
.field private mPhoneId:I

.field mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ril/ImsRILAdapter;I)V
    .locals 0
    .param p1, "ril"    # Lcom/mediatek/ims/ril/ImsRILAdapter;
    .param p2, "phoneId"    # I

    .line 65
    invoke-direct {p0}, Lvendor/mediatek/hardware/mtkradioex/ims/IMtkRadioExImsIndication$Stub;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 67
    iput p2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 68
    return-void
.end method


# virtual methods
.method public audioIndication(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "audio"    # I

    .line 344
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 346
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v1

    .line 349
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc32

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 352
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttAudioIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 356
    :cond_0
    return-void
.end method

.method public callInfoIndication(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "result"    # [Ljava/lang/String;

    .line 804
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 807
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xbd7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 816
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 819
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 821
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 823
    :cond_1
    return-void

    .line 808
    :cond_2
    :goto_0
    return-void
.end method

.method public callRatIndication(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "domain"    # I
    .param p3, "rat"    # I

    .line 1118
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1120
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v1

    .line 1123
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc38

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1126
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallRatIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1128
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1130
    :cond_0
    return-void
.end method

.method public callmodChangeIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "callMode"    # Ljava/lang/String;
    .param p4, "videoState"    # Ljava/lang/String;
    .param p5, "audioDirection"    # Ljava/lang/String;
    .param p6, "pau"    # Ljava/lang/String;

    .line 837
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 839
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 843
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 843
    const/16 v3, 0xbda

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 847
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallModeChangeIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 849
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 851
    :cond_0
    return-void
.end method

.method public cdmaNewSmsEx(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "msg"    # Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 153
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2c

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 159
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCdmaSmsMessage(Landroid/hardware/radio/messaging/CdmaSmsMessage;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 160
    .local v0, "sms":Landroid/telephony/SmsMessage;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCdmaSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 163
    :cond_0
    return-void
.end method

.method public econfResultIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "confCallId"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;
    .param p5, "result"    # Ljava/lang/String;
    .param p6, "cause"    # Ljava/lang/String;
    .param p7, "joinedCallId"    # Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 868
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v2, 0x4

    aput-object p6, v0, v2

    const/4 v2, 0x5

    aput-object p7, v0, v2

    .line 871
    .local v0, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 872
    invoke-static {v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 871
    const/16 v4, 0xbd8

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 875
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 876
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECONF result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 879
    :cond_0
    return-void
.end method

.method public ectIndication(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "call_id"    # I
    .param p3, "ectResult"    # I
    .param p4, "cause"    # I

    .line 785
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 787
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 790
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe6

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 792
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEctResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 796
    :cond_0
    return-void
.end method

.method public eregrtInfoInd(I[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 541
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "eregrtInfoInd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 549
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .end local v4    # "i":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 557
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_2

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 560
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEregrtIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 565
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 1258
    const-string v0, "e52459812a302acdde2f0131532472cd88eaad52"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 1263
    const/4 v0, 0x1

    return v0
.end method

.method public imsBearerInit(I)V
    .locals 4
    .param p1, "type"    # I

    .line 101
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 103
    new-array v0, v1, [I

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 106
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbeb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerInitRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 113
    :cond_0
    return-void
.end method

.method public imsBearerStateNotify(IIILjava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "aid"    # I
    .param p3, "action"    # I
    .param p4, "capability"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 81
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "phoneId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "strAid":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "strAction":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object p4, v4, v1

    move-object v1, v4

    .line 87
    .local v1, "ret":[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v5, 0xbe9

    invoke-virtual {v4, v5, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 90
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v4, v4, Lcom/mediatek/ims/ril/ImsRILAdapter;->mBearerStateRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 94
    :cond_0
    return-void
.end method

.method public imsCfgConfigChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "configId"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 1163
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1165
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 1168
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc15

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1171
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1175
    :cond_0
    return-void
.end method

.method public imsCfgConfigLoaded(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1205
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1207
    new-array v0, v1, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1210
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc16

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1213
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgConfigLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1218
    :cond_0
    return-void
.end method

.method public imsCfgDynamicImsSwitchComplete(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1140
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1142
    new-array v0, v1, [I

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1145
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc13

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1148
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgDynamicImsSwitchCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1152
    :cond_0
    return-void
.end method

.method public imsCfgFeatureChanged(IIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "phoneId"    # I
    .param p3, "featureId"    # I
    .param p4, "value"    # I

    .line 1186
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1188
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    const/4 v3, 0x0

    aput v2, v0, v3

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    .line 1191
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc14

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1194
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1195
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsCfgFeatureChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1198
    :cond_0
    return-void
.end method

.method public imsConferenceInfoIndication(I[Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "participants"    # [Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;

    .line 916
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 918
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 922
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 924
    new-instance v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;

    invoke-direct {v2}, Lcom/mediatek/ims/ImsCallSessionProxy$User;-><init>()V

    .line 925
    .local v2, "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->user_addr:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mUserAddr:Ljava/lang/String;

    .line 926
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->end_point:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEndPoint:Ljava/lang/String;

    .line 927
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->entity:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mEntity:Ljava/lang/String;

    .line 928
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->display_text:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mDisplayText:Ljava/lang/String;

    .line 929
    aget-object v3, p2, v1

    iget-object v3, v3, Lvendor/mediatek/hardware/mtkradioex/ims/ImsConfParticipant;->status:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/ims/ImsCallSessionProxy$User;->mStatus:Ljava/lang/String;

    .line 930
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    .end local v2    # "user":Lcom/mediatek/ims/ImsCallSessionProxy$User;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 934
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 935
    invoke-static {v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 934
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 938
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_2

    .line 939
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsConfInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 940
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 942
    :cond_2
    return-void

    .line 919
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/ImsCallSessionProxy$User;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public imsDataInfoNotify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "capability"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "extra"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 126
    iget v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "phoneId":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p2, v2, v1

    const/4 v1, 0x2

    aput-object p3, v2, v1

    const/4 v1, 0x3

    aput-object p4, v2, v1

    move-object v1, v2

    .line 130
    .local v1, "ret":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v3, 0xc27

    invoke-virtual {v2, v3, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDataInfoNotifyRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 135
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 137
    :cond_0
    return-void
.end method

.method public imsDialogIndication(I[Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "dialogList"    # [Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;

    .line 980
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 983
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc39

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 984
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 985
    .local v2, "d":Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RIL_UNSOL_IMS_DIALOG_INDICATION dialogId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->dialogId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;->address:Ljava/lang/String;

    .line 986
    invoke-static {v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 985
    invoke-virtual {v3, v4}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 984
    .end local v2    # "d":Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    if-eqz v0, :cond_2

    .line 990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 992
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 994
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsDialogRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 996
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/mediatek/hardware/mtkradioex/voice/Dialog;>;"
    :cond_2
    return-void
.end method

.method public imsEventPackageIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ptype"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1071
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 1072
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1075
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1075
    const/16 v3, 0xbe0

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1079
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEvtPkgRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1081
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1083
    :cond_0
    return-void
.end method

.method public imsRedialEmergencyIndication(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 1023
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1025
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    iget v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1028
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_REDIAL_EMERGENCY_INDICATION, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1032
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRedialEccIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1036
    :cond_0
    return-void
.end method

.method public imsRegFlagInd(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "flag"    # I

    .line 573
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 575
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    iget v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    aput v2, v0, v1

    .line 578
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc3b

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 580
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegFlagIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 582
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 584
    :cond_0
    return-void
.end method

.method public imsRegInfoInd(I[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 506
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "imsRegInfoInd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 514
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .end local v4    # "i":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 519
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 522
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_2

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 525
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 527
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mEiregIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 530
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public imsRegStatusReport(ILvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "report"    # Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;

    .line 479
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 481
    new-instance v0, Lcom/mediatek/ims/ImsRegInfo;

    iget v3, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->report_type:I

    iget v4, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->account_id:I

    iget v5, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->expire_time:I

    iget v6, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->error_code:I

    iget-object v7, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->uri:Ljava/lang/String;

    iget-object v8, p2, Lvendor/mediatek/hardware/mtkradioex/ims/ImsRegStatusInfo;->error_msg:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/ims/ImsRegInfo;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 485
    .local v0, "info":Lcom/mediatek/ims/ImsRegInfo;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsRegInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLogv(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegStatusIndRistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 492
    :cond_0
    return-void
.end method

.method public imsRegistrationInfo(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "registerState"    # I
    .param p3, "capability"    # I

    .line 412
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 414
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 416
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe1

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 419
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 421
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 423
    :cond_0
    return-void
.end method

.method public imsRtpInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdnId"    # Ljava/lang/String;
    .param p3, "networkId"    # Ljava/lang/String;
    .param p4, "timer"    # Ljava/lang/String;
    .param p5, "sendPktLost"    # Ljava/lang/String;
    .param p6, "recvPktLost"    # Ljava/lang/String;
    .param p7, "jitter"    # Ljava/lang/String;
    .param p8, "delay"    # Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 602
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 605
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbde

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 608
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRTPInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 610
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 612
    :cond_0
    return-void
.end method

.method public imsSupportEcc(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "supportLteEcc"    # I

    .line 432
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 434
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    iget v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    aput v2, v0, v1

    .line 437
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_IMS_ECC_SUPPORT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsEccSupportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 445
    :cond_0
    return-void
.end method

.method public lteMessageWaitingIndication(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "ptype"    # Ljava/lang/String;
    .param p4, "urcIdx"    # Ljava/lang/String;
    .param p5, "totalUrcCount"    # Ljava/lang/String;
    .param p6, "rawData"    # Ljava/lang/String;

    .line 957
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 958
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 959
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 962
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 963
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 962
    const/16 v3, 0xc12

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 966
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mLteMsgWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 968
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 970
    :cond_0
    return-void
.end method

.method public newSmsEx(I[B)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdu"    # [B

    .line 208
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 210
    new-array v0, v1, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 214
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc29

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 217
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNewSmsRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 220
    :cond_0
    return-void
.end method

.method public newSmsStatusReportEx(I[B)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pdu"    # [B

    .line 180
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 182
    new-array v0, v1, [Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 186
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc28

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSmsStatusRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 192
    :cond_0
    return-void
.end method

.method public noEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "type"    # I

    .line 1005
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1008
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc2d

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 1010
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mNoECBMRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1013
    :cond_0
    return-void
.end method

.method public onMDInternetUsageInd(I[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 750
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "onMDInternetUsage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 757
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .end local v4    # "i":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 762
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_2

    .line 765
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 767
    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 769
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v2, v2, Lcom/mediatek/ims/ril/ImsRILAdapter;->mMDInternetUsageRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 772
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public onSsacStatus(I[I)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "status"    # [I

    .line 1229
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1234
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "onSsacStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1237
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    .end local v4    # "i":Ljava/lang/Integer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1240
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1242
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1245
    .end local v0    # "b":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_2

    .line 1246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1248
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1250
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSsacIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1253
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method public onUssi(IILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "modeType"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 651
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 653
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object p3, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 655
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 658
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdc

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 660
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mUSSIRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 664
    :cond_0
    return-void
.end method

.method public onVolteSubscription(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "status"    # I

    .line 672
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 674
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    iget v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    aput v2, v0, v1

    .line 677
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc26

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 680
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 684
    :cond_0
    return-void
.end method

.method public onXui(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "broadcastFlag"    # Ljava/lang/String;
    .param p4, "xuiInfo"    # Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 625
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    iget v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    .line 626
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 629
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    .line 630
    const-string v2, "IMS_RILA"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 629
    const/16 v3, 0xbdf

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 633
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mXuiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 636
    :cond_0
    return-void
.end method

.method public rttCapabilityIndication(IIIIII)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "localCap"    # I
    .param p4, "remoteCap"    # I
    .param p5, "localStatus"    # I
    .param p6, "remoteStatus"    # I

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 295
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    const/4 v1, 0x4

    aput p6, v0, v1

    .line 298
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc30

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 305
    :cond_0
    return-void
.end method

.method public rttModifyRequestReceive(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "rttType"    # I

    .line 320
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 322
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v1

    .line 325
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc31

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyRequestReceiveRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 332
    :cond_0
    return-void
.end method

.method public rttModifyResponse(III)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "result"    # I

    .line 235
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    aput p3, v0, v1

    .line 240
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xc2e

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttModifyResponseRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 247
    :cond_0
    return-void
.end method

.method public rttTextReceive(IIILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "callId"    # I
    .param p3, "lenOfString"    # I
    .param p4, "text"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 263
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "strCallId":Ljava/lang/String;
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "strLength":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p4, v3, v1

    move-object v1, v3

    .line 269
    .local v1, "ret":[Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v4, 0xc2f

    invoke-virtual {v3, v4, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 272
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v3, v3, Lcom/mediatek/ims/ril/ImsRILAdapter;->mRttTextReceiveRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 276
    :cond_0
    return-void
.end method

.method public sendVopsIndication(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "vops"    # I

    .line 369
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 371
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 374
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsRILConstants.RIL_UNSOL_VOPS_INDICATION, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVopsStatusIndRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 381
    :cond_0
    return-void
.end method

.method public sipCallProgressIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "sipMsgType"    # Ljava/lang/String;
    .param p5, "method"    # Ljava/lang/String;
    .param p6, "responseCode"    # Ljava/lang/String;
    .param p7, "reasonText"    # Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 897
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 900
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbd9

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 903
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 905
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 907
    :cond_0
    return-void
.end method

.method public sipHeaderReport(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # [Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1094
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc34

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 1104
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mImsSipHeaderRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1108
    :cond_1
    return-void

    .line 1095
    :cond_2
    :goto_0
    return-void
.end method

.method public sipRegInfoInd(III[Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "account_id"    # I
    .param p3, "response_code"    # I
    .param p4, "info"    # [Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "sipRegInfoInd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    array-length v1, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p4, v3

    .line 467
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public speechCodecInfoIndication(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "info"    # I

    .line 1045
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 1046
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1049
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ImsRILConstants.RIL_UNSOL_SPEECH_CODEC_INFO, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ril/ImsRILAdapter;->riljLog(Ljava/lang/String;)V

    .line 1053
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mSpeechCodecInfoRegistrant:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public videoCapabilityIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "localVideoCap"    # Ljava/lang/String;
    .param p4, "remoteVideoCap"    # Ljava/lang/String;

    .line 698
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 700
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 703
    .local v0, "ret":[Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbdb

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 705
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoCapabilityIndicatorRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 707
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 709
    :cond_0
    return-void
.end method

.method public videoRingtoneEventInd(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "event"    # [Ljava/lang/String;

    .line 718
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 720
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v1, 0xc3a

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLog(I)V

    .line 724
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v0, v0, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVideoRingtoneRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 733
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 735
    :cond_1
    return-void

    .line 725
    :cond_2
    :goto_0
    return-void
.end method

.method public volteSetting(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "isEnable"    # Z

    .line 389
    iget-object v0, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ril/ImsRILAdapter;->processMtkIndication(II)V

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    iget v2, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mPhoneId:I

    aput v2, v0, v1

    .line 394
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    const/16 v2, 0xbe7

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/ims/ril/ImsRILAdapter;->unsljLogRet(ILjava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iput-object v0, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingValue:Ljava/lang/Object;

    .line 398
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/mediatek/ims/ril/MtkRadioExImsIndication;->mRil:Lcom/mediatek/ims/ril/ImsRILAdapter;

    iget-object v1, v1, Lcom/mediatek/ims/ril/ImsRILAdapter;->mVolteSettingRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 400
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 402
    :cond_0
    return-void
.end method
