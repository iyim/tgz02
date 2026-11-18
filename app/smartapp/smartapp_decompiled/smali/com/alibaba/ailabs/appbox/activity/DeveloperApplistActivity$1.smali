.class Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$1;
.super Ljava/lang/Object;
.source "DeveloperApplistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/DeveloperApplistActivity;->finish()V

    return-void
.end method
