.class Lcom/taobao/aranger/utils/IPCRecycle$1;
.super Ljava/lang/Object;
.source "IPCRecycle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/aranger/utils/IPCRecycle;->register(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/aranger/utils/IPCRecycle;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/taobao/aranger/utils/IPCRecycle;Ljava/lang/Object;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/taobao/aranger/utils/IPCRecycle$1;->this$0:Lcom/taobao/aranger/utils/IPCRecycle;

    iput-object p2, p0, Lcom/taobao/aranger/utils/IPCRecycle$1;->val$target:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/taobao/aranger/utils/IPCRecycle$1;->this$0:Lcom/taobao/aranger/utils/IPCRecycle;

    iget-object v1, p0, Lcom/taobao/aranger/utils/IPCRecycle$1;->val$target:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/taobao/aranger/utils/IPCRecycle;->access$000(Lcom/taobao/aranger/utils/IPCRecycle;Ljava/lang/Object;)V

    return-void
.end method
