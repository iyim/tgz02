.class public Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;
.super Ljava/lang/Object;
.source "NotificationBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;
    }
.end annotation


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private displayType:Ljava/lang/String;

.field private extInfo:Ljava/lang/String;

.field private extMsgId:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private screenButtons:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "screenButtons"
    .end annotation
.end field

.field private sourceBizName:Ljava/lang/String;

.field private status:Ljava/lang/Byte;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->displayType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtMsgId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->extMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenButtons()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->screenButtons:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceBizName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->sourceBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Byte;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->status:Ljava/lang/Byte;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setDisplayType(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->displayType:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setExtMsgId(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->extMsgId:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setScreenButtons(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->screenButtons:Ljava/lang/String;

    return-void
.end method

.method public setSourceBizName(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->sourceBizName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/Byte;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->status:Ljava/lang/Byte;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;->title:Ljava/lang/String;

    return-void
.end method
