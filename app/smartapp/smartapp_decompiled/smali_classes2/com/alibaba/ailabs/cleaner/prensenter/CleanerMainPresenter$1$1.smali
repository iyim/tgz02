.class Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1$1;
.super Ljava/lang/Object;
.source "CleanerMainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;->this$0:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->access$000(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->notifyDataSetChanged()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;->this$0:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->access$100(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;->this$0:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->access$200(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;

    invoke-interface {v0}, Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;->hideLoaddingview()V

    :cond_0
    return-void
.end method
