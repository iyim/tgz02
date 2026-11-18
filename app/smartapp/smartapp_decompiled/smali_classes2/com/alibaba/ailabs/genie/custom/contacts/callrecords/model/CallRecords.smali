.class public Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "CallRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords$Ext;
    }
.end annotation


# static fields
.field public static final DIRECTION_IN:Ljava/lang/String; = "IN"

.field public static final DIRECTION_OUT:Ljava/lang/String; = "OUT"


# instance fields
.field private answerState:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "answerState"
    .end annotation
.end field

.field private answerTime:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "answerTime"
    .end annotation
.end field

.field private callDirection:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callDirection"
    .end annotation
.end field

.field private callDuration:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callDuration"
    .end annotation
.end field

.field private callMode:Ljava/lang/String;

.field private callStartTime:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callStartTime"
    .end annotation
.end field

.field private callType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callType"
    .end annotation
.end field

.field private calleeContactId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeContactId"
    .end annotation
.end field

.field private calleeDeviceName:Ljava/lang/String;

.field private calleeExtUserId:Ljava/lang/String;

.field private calleeImg:Ljava/lang/String;

.field private calleeNickname:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeNickname"
    .end annotation
.end field

.field private calleePhoneNum:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleePhoneNum"
    .end annotation
.end field

.field private calleeProductKey:Ljava/lang/String;

.field private calleeUserId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeUserId"
    .end annotation
.end field

.field private calleeUuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeUuid"
    .end annotation
.end field

.field private callerContactId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerContactId"
    .end annotation
.end field

.field private callerDeviceName:Ljava/lang/String;

.field private callerExtUserId:Ljava/lang/String;

.field private callerImg:Ljava/lang/String;

.field private callerNickname:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerNickname"
    .end annotation
.end field

.field private callerPhoneNum:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerPhoneNum"
    .end annotation
.end field

.field private callerProductKey:Ljava/lang/String;

.field private callerUserId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerUserId"
    .end annotation
.end field

.field private callerUuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerUuid"
    .end annotation
.end field

.field private count:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "realCallLogCount"
    .end annotation
.end field

.field private ext:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ext"
    .end annotation
.end field

.field private lastLeaveTime:Ljava/lang/Long;

.field private leaveTime:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "leaveTime"
    .end annotation
.end field

.field public model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;",
            ">;"
        }
    .end annotation
.end field

.field private ownerDeviceName:Ljava/lang/String;

.field private ownerExtUserId:Ljava/lang/String;

.field private ownerProductKey:Ljava/lang/String;

.field private ownerUuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ownerUuid"
    .end annotation
.end field

.field private recordId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation
.end field

.field private serviceName:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sessionId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;
    .locals 1

    .line 314
    :try_start_0
    const-class v0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "contacts_records"

    .line 317
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAnswerState()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->answerState:Ljava/lang/String;

    return-object v0
.end method

.method public getAnswerTime()Ljava/lang/Long;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->answerTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getCallDirection()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getCallDuration()J
    .locals 2

    .line 289
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callDuration:J

    return-wide v0
.end method

.method public getCallMode()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCallStartTime()Ljava/lang/Long;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getCallType()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callType:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeContactId()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeDeviceName()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeExtUserId()Ljava/lang/String;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeExtUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeImg()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeImg:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeNickname()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleePhoneNum()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleePhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeProductKey()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeProductKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeUserId()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeUuid()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerContactId()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDeviceName()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerExtUserId()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerExtUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerImg()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerImg:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerNickname()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerPhoneNum()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerProductKey()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerProductKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerUserId()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerUuid()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->count:I

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLeaveTime()Ljava/lang/Long;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->lastLeaveTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getLeaveTime()Ljava/lang/Long;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->leaveTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getOwnerDeviceName()Ljava/lang/String;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ownerDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerExtUserId()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ownerExtUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerProductKey()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ownerProductKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUuid()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ownerUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->recordId:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswerState(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->answerState:Ljava/lang/String;

    return-void
.end method

.method public setAnswerTime(Ljava/lang/Long;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->answerTime:Ljava/lang/Long;

    return-void
.end method

.method public setCallDirection(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callDirection:Ljava/lang/String;

    return-void
.end method

.method public setCallDuration(J)V
    .locals 0

    .line 293
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callDuration:J

    return-void
.end method

.method public setCallMode(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callMode:Ljava/lang/String;

    return-void
.end method

.method public setCallStartTime(Ljava/lang/Long;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callStartTime:Ljava/lang/Long;

    return-void
.end method

.method public setCallType(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callType:Ljava/lang/String;

    return-void
.end method

.method public setCalleeContactId(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeContactId:Ljava/lang/String;

    return-void
.end method

.method public setCalleeDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setCalleeExtUserId(Ljava/lang/String;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeExtUserId:Ljava/lang/String;

    return-void
.end method

.method public setCalleeImg(Ljava/lang/String;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeImg:Ljava/lang/String;

    return-void
.end method

.method public setCalleeNickname(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeNickname:Ljava/lang/String;

    return-void
.end method

.method public setCalleePhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleePhoneNum:Ljava/lang/String;

    return-void
.end method

.method public setCalleeProductKey(Ljava/lang/String;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeProductKey:Ljava/lang/String;

    return-void
.end method

.method public setCalleeUserId(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeUserId:Ljava/lang/String;

    return-void
.end method

.method public setCalleeUuid(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->calleeUuid:Ljava/lang/String;

    return-void
.end method

.method public setCallerContactId(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerContactId:Ljava/lang/String;

    return-void
.end method

.method public setCallerDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setCallerExtUserId(Ljava/lang/String;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerExtUserId:Ljava/lang/String;

    return-void
.end method

.method public setCallerImg(Ljava/lang/String;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerImg:Ljava/lang/String;

    return-void
.end method

.method public setCallerNickname(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerNickname:Ljava/lang/String;

    return-void
.end method

.method public setCallerPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerPhoneNum:Ljava/lang/String;

    return-void
.end method

.method public setCallerProductKey(Ljava/lang/String;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerProductKey:Ljava/lang/String;

    return-void
.end method

.method public setCallerUserId(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerUserId:Ljava/lang/String;

    return-void
.end method

.method public setCallerUuid(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->callerUuid:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->count:I

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ext:Ljava/lang/String;

    return-void
.end method

.method public setLastLeaveTime(Ljava/lang/Long;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->lastLeaveTime:Ljava/lang/Long;

    return-void
.end method

.method public setLeaveTime(Ljava/lang/Long;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->leaveTime:Ljava/lang/Long;

    return-void
.end method

.method public setOwnerDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ownerDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setOwnerExtUserId(Ljava/lang/String;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ownerExtUserId:Ljava/lang/String;

    return-void
.end method

.method public setOwnerProductKey(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ownerProductKey:Ljava/lang/String;

    return-void
.end method

.method public setOwnerUuid(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->ownerUuid:Ljava/lang/String;

    return-void
.end method

.method public setRecordId(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->recordId:I

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->sessionId:Ljava/lang/String;

    return-void
.end method
