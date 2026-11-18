.class Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;
.super Ljava/lang/Object;
.source "CleanerMainPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;->this$0:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAllPackageShowToUserCleanerSorted(Z)Ljava/util/HashMap;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SortMapByValue;->sortByComparator(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;->this$0:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;

    invoke-static {v1}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->access$000(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CleanerMainPresenter"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/appbox/utils/TimeUtils;->getShortTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;->this$0:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->access$000(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->setPackageInfoArrayList(Ljava/util/ArrayList;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;->this$0:Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->access$000(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->setPackageUsedInfo(Ljava/util/ArrayList;)V

    .line 65
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method
