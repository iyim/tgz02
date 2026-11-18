.class public Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;
.source "DeviceContacts.java"


# instance fields
.field private appKey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "appKey"
    .end annotation
.end field

.field private deviceIcon:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceIcon"
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uuid"
    .end annotation
.end field

.field private deviceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceName"
    .end annotation
.end field

.field private deviceNameAlias:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field private deviceType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceType"
    .end annotation
.end field

.field private features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

.field private isOnline:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "online"
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "phoneNumber"
    .end annotation
.end field

.field private position:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "position"
    .end annotation
.end field

.field private userId:Ljava/lang/Long;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseContactsItem;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIcon()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceNameAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceNameAlias()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceNameAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Lcom/alibaba/ailabs/genie/contacts/model/Features;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public isOnline()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->isOnline:Z

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setDeviceIcon(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceIcon:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceNameAlias:Ljava/lang/String;

    return-void
.end method

.method public setDeviceNameAlias(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceNameAlias:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setFeatures(Lcom/alibaba/ailabs/genie/contacts/model/Features;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

    return-void
.end method

.method public setOnline(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->isOnline:Z

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->position:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->userId:Ljava/lang/Long;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceContacts{deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceNameAlias=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceNameAlias:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isOnline="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->isOnline:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", deviceIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->deviceIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", position=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->position:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phoneNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;->features:Lcom/alibaba/ailabs/genie/contacts/model/Features;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
