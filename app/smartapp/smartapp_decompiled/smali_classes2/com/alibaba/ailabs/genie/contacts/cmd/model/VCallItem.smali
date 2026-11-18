.class public Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;
.super Ljava/lang/Object;
.source "VCallItem.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field avatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "avatar"
    .end annotation
.end field

.field deviceTargets:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceTargets"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field nickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nickname"
    .end annotation
.end field

.field phoneNum:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "phoneNum"
    .end annotation
.end field

.field relationShip:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "relationShip"
    .end annotation
.end field

.field targetType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "targetType"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation
.end field

.field userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "userId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VCallItem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;
    .locals 1

    .line 49
    :try_start_0
    const-class v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->deviceTargets:Ljava/util/List;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationShip()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->relationShip:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTargetType()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->targetType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VIDEO"

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->targetType:Ljava/lang/String;

    const-string v1, "DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->deviceTargets:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/ListUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->deviceTargets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;

    .line 132
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setDeviceTargets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->deviceTargets:Ljava/util/List;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public setRelationShip(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->relationShip:Ljava/lang/String;

    return-void
.end method

.method public setTargetType(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->targetType:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 139
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
