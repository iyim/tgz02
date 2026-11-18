.class Lcom/alibaba/ailabs/genie/message/MessageCenterApplication$1;
.super Ljava/lang/Object;
.source "MessageCenterApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterApplication$1;->this$0:Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {}, Lcom/alibaba/ailabs/genie/message/MessageCenterApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->bindService()V

    return-void
.end method
