.class Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$5;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->startLoadFromDisk(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$5;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$5;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    monitor-enter v0

    .line 758
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$5;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->access$400(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V

    .line 759
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
