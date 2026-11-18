.class public Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;
.super Ljava/lang/Object;
.source "CommonMsgBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Payload"
.end annotation


# instance fields
.field private actionURL:Ljava/lang/String;

.field private imageURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionURL()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;->actionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public setActionURL(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;->actionURL:Ljava/lang/String;

    return-void
.end method

.method public setImageURL(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/bean/CommonMsgBean$Payload;->imageURL:Ljava/lang/String;

    return-void
.end method
