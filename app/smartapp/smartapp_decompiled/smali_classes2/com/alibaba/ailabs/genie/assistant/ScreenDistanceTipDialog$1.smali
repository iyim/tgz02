.class Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog$1;
.super Ljava/lang/Object;
.source "ScreenDistanceTipDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/ScreenDistanceTipDialog;->dismiss()V

    return-void
.end method
