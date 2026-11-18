.class public Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;
.super Ljava/lang/Object;
.source "NotificationBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscribeMetaInfoBean"
.end annotation


# instance fields
.field private classX:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "class"
    .end annotation
.end field

.field private icon:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClassX()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->classX:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setClassX(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->classX:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;->name:Ljava/lang/String;

    return-void
.end method
