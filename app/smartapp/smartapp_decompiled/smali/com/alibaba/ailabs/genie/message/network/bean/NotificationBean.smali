.class public Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;
.super Lcom/alibaba/ailabs/genie/message/network/bean/AbsMessageBean;
.source "NotificationBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;
    }
.end annotation


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private extInfo:Ljava/lang/String;

.field private extMsgId:Ljava/lang/String;

.field private gmtCreate:Ljava/lang/Long;

.field private imageUrl:Ljava/lang/String;

.field private status:Ljava/lang/Byte;

.field private subTitle:Ljava/lang/String;

.field private subscribeMetaInfo:Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/message/network/bean/AbsMessageBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtMsgId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->extMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtCreate()Ljava/lang/Long;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->gmtCreate:Ljava/lang/Long;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Byte;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->status:Ljava/lang/Byte;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribeMetaInfo()Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->subscribeMetaInfo:Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setExtMsgId(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->extMsgId:Ljava/lang/String;

    return-void
.end method

.method public setGmtCreate(Ljava/lang/Long;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->gmtCreate:Ljava/lang/Long;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/Byte;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->status:Ljava/lang/Byte;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setSubscribeMetaInfo(Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->subscribeMetaInfo:Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean$SubscribeMetaInfoBean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;->title:Ljava/lang/String;

    return-void
.end method
