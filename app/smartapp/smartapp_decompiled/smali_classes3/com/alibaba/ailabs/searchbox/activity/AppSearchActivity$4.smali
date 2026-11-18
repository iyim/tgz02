.class Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$4;
.super Ljava/lang/Object;
.source "AppSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;->initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/searchbox/adapter/AppSearchAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity$4;->this$0:Lcom/alibaba/ailabs/searchbox/activity/AppSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 210
    invoke-static {}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->getInstance()Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;

    move-result-object p1

    const-string p2, "recycleView touch"

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/searchbox/task/AutoOpenMgr;->stopOpenTask(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
