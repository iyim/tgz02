.class public Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "CallRecordItem.java"


# instance fields
.field private answerState:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "answerState"
    .end annotation
.end field

.field private callDuration:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callDuration"
    .end annotation
.end field

.field private callMode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callMode"
    .end annotation
.end field

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

.field private calleeDeviceIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeDeviceIconUrl"
    .end annotation
.end field

.field private calleeDeviceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeDeviceId"
    .end annotation
.end field

.field private calleeDeviceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeDeviceName"
    .end annotation
.end field

.field private calleeDevicePosition:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeDevicePosition"
    .end annotation
.end field

.field private calleeDeviceType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeDeviceType"
    .end annotation
.end field

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

.field private calleeUserId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "calleeUserId"
    .end annotation
.end field

.field private callerDeviceIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerDeviceIconUrl"
    .end annotation
.end field

.field private callerDeviceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerDeviceId"
    .end annotation
.end field

.field private callerDeviceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerDeviceName"
    .end annotation
.end field

.field private callerDevicePosition:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerDevicePosition"
    .end annotation
.end field

.field private callerDeviceType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerDeviceType"
    .end annotation
.end field

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

.field private callerUserId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "callerUserId"
    .end annotation
.end field

.field private count:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "count"
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private finalmode:Ljava/lang/String;

.field private ids:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isCaller:Z

.field private isFriend:Z

.field private isOneUser:Z

.field private itemIndex:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "itemIndex"
    .end annotation
.end field

.field private mode:I

.field public model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private nickName:Ljava/lang/String;

.field private ownerUserId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ownerUserId"
    .end annotation
.end field

.field private peerNickname:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "peerNickname"
    .end annotation
.end field

.field private peerPortraitUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "peerPortraitUrl"
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private relationship:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "relationship"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAnswerState()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->answerState:Ljava/lang/String;

    return-object v0
.end method

.method public getCallDuration()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callDuration:I

    return v0
.end method

.method public getCallMode()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCallStartTime()Ljava/lang/Long;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callStartTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getCallType()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callType:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeDeviceIconUrl()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDeviceIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeDeviceId()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeDeviceName()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeDevicePosition()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDevicePosition:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeDeviceType()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeNickname()Ljava/lang/String;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleePhoneNum()Ljava/lang/String;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleePhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeUserId()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDeviceIconUrl()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDeviceIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDeviceId()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDeviceName()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDevicePosition()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDevicePosition:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDeviceType()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerNickname()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerPhoneNum()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerUserId()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->count:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalmode()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->finalmode:Ljava/lang/String;

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getItemIndex()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->itemIndex:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->mode:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerUserId()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->ownerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerNickname()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->peerNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPortraitUrl()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->peerPortraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationship()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->relationship:Ljava/lang/String;

    return-object v0
.end method

.method public isCaller()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isCaller:Z

    return v0
.end method

.method public isFriend()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isFriend:Z

    return v0
.end method

.method public isOneUser()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isOneUser:Z

    return v0
.end method

.method public setAnswerState(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->answerState:Ljava/lang/String;

    return-void
.end method

.method public setCallDuration(I)V
    .locals 0

    .line 418
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callDuration:I

    return-void
.end method

.method public setCallMode(Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callMode:Ljava/lang/String;

    return-void
.end method

.method public setCallStartTime(Ljava/lang/Long;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callStartTime:Ljava/lang/Long;

    return-void
.end method

.method public setCallType(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callType:Ljava/lang/String;

    return-void
.end method

.method public setCalleeDeviceIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDeviceIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setCalleeDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setCalleeDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setCalleeDevicePosition(Ljava/lang/String;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDevicePosition:Ljava/lang/String;

    return-void
.end method

.method public setCalleeDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setCalleeNickname(Ljava/lang/String;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeNickname:Ljava/lang/String;

    return-void
.end method

.method public setCalleePhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleePhoneNum:Ljava/lang/String;

    return-void
.end method

.method public setCalleeUserId(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->calleeUserId:Ljava/lang/String;

    return-void
.end method

.method public setCaller(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isCaller:Z

    return-void
.end method

.method public setCallerDeviceIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDeviceIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setCallerDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setCallerDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setCallerDevicePosition(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDevicePosition:Ljava/lang/String;

    return-void
.end method

.method public setCallerDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerDeviceType:Ljava/lang/String;

    return-void
.end method

.method public setCallerNickname(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerNickname:Ljava/lang/String;

    return-void
.end method

.method public setCallerPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerPhoneNum:Ljava/lang/String;

    return-void
.end method

.method public setCallerUserId(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->callerUserId:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->count:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setFinalmode(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->finalmode:Ljava/lang/String;

    return-void
.end method

.method public setFriend(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isFriend:Z

    return-void
.end method

.method public setIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->ids:Ljava/util/List;

    return-void
.end method

.method public setItemIndex(I)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->itemIndex:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->mode:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOneUser(Z)V
    .locals 0

    .line 450
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->isOneUser:Z

    return-void
.end method

.method public setOwnerUserId(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->ownerUserId:Ljava/lang/String;

    return-void
.end method

.method public setPeerNickname(Ljava/lang/String;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->peerNickname:Ljava/lang/String;

    return-void
.end method

.method public setPeerPortraitUrl(Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->peerPortraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setRelationship(Ljava/lang/String;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->relationship:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallRecordItem{mode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nickName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
