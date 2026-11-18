.class public Lcom/alibaba/ailabs/genie/client/data/NotificationBean;
.super Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.source "NotificationBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/client/data/NotificationBean$ScreenButton;
    }
.end annotation


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private extInfo:Ljava/lang/String;

.field private extMsgId:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private screenButtons:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "screenButtons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/client/data/NotificationBean$ScreenButton;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/Byte;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtMsgId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->extMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/client/data/NotificationBean$ScreenButton;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->screenButtons:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Byte;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->status:Ljava/lang/Byte;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setExtMsgId(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->extMsgId:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setScreenButtons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/client/data/NotificationBean$ScreenButton;",
            ">;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->screenButtons:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/Byte;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->status:Ljava/lang/Byte;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/NotificationBean;->title:Ljava/lang/String;

    return-void
.end method
