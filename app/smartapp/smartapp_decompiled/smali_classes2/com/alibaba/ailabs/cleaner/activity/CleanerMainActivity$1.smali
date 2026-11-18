.class Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$1;
.super Ljava/lang/Object;
.source "CleanerMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$1;->this$0:Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity$1;->this$0:Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/cleaner/activity/CleanerMainActivity;->finish()V

    return-void
.end method
