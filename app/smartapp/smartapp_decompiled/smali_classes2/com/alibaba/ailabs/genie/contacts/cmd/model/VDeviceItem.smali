.class public Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;
.super Ljava/lang/Object;
.source "VDeviceItem.java"


# static fields
.field public static final DEVICE_TYPE_APP:Ljava/lang/String; = "aligenieApp"


# instance fields
.field appkey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "appkey"
    .end annotation
.end field

.field deviceIcon:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceIcon"
    .end annotation
.end field

.field deviceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceName"
    .end annotation
.end field

.field devicePosition:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "devicePosition"
    .end annotation
.end field

.field deviceType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceType"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "phoneNumber"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "userId"
    .end annotation
.end field

.field utdid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "deviceType"
    .end annotation
.end field

.field uuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIcon()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->deviceIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePosition()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->devicePosition:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->appkey:Ljava/lang/String;

    return-void
.end method

.method public setDeviceIcon(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->deviceIcon:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDevicePosition(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->devicePosition:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->utdid:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VDeviceItem;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
