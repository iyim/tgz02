.class Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$4;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$4;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$4;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
