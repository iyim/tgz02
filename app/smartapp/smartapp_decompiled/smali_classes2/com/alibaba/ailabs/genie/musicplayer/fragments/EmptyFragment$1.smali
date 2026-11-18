.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment$1;
.super Ljava/lang/Object;
.source "EmptyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/EmptyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->getInstance()Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/activity/ActivityManager;->clearAllActivity()V

    return-void
.end method
