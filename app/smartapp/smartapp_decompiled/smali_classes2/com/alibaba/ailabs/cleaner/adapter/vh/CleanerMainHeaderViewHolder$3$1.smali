.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;
.super Ljava/lang/Object;
.source "CleanerMainHeaderViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;

.field final synthetic val$count2:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;J)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;

    iput-wide p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->val$count2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$700(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$700(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->val$count2:J

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/cleaner/util/CacheUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runWithAnimation(FF)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$800(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->access$800(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;)Lcom/alibaba/ailabs/cleaner/view/RunTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;

    iget v2, v2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;->val$cache:F

    iget-wide v3, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;->val$count2:J

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/cleaner/util/CacheUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/alibaba/ailabs/cleaner/util/NumUtil;->getFloat(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/cleaner/view/RunTextView;->runWithAnimation(FF)V

    :cond_1
    return-void
.end method
