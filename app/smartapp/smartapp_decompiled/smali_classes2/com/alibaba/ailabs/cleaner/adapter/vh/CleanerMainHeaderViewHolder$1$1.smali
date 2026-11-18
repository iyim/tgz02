.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;
.super Ljava/lang/Object;
.source "CleanerMainHeaderViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;->this$1:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->getCleanerOrangeConfig(Z)Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->getOtherPath()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->deleteAllConfig(Ljava/util/ArrayList;)V

    .line 117
    new-instance v0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$1$1;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->clearAllAppCache(Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V

    return-void
.end method
