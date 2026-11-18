.class Lcom/alibaba/ailabs/genie/genieui/GenieUiController$1;
.super Ljava/lang/Object;
.source "GenieUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->changeToNext()V

    return-void
.end method
