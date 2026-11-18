.class final Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;
.super Landroid/os/FileObserver;
.source "SharedPreferencesNewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;Ljava/lang/String;I)V
    .locals 0

    .line 1323
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    .line 1324
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0

    .line 1329
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->access$500(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 1330
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->access$600(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V

    goto :goto_0

    .line 1332
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$FileMonitor;->stopWatching()V

    :goto_0
    return-void
.end method
