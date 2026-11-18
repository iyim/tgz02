.class Lcom/uc/sdk/ulog/Xlog$1;
.super Ljava/lang/Object;
.source "Xlog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uc/sdk/ulog/Xlog;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uc/sdk/ulog/Xlog;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$funcname:Ljava/lang/String;

.field final synthetic val$line:I

.field final synthetic val$log:Ljava/lang/String;

.field final synthetic val$maintid:J

.field final synthetic val$pid:I

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$tid:J


# direct methods
.method constructor <init>(Lcom/uc/sdk/ulog/Xlog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/uc/sdk/ulog/Xlog$1;->this$0:Lcom/uc/sdk/ulog/Xlog;

    iput-object p2, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$filename:Ljava/lang/String;

    iput-object p4, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$funcname:Ljava/lang/String;

    iput p5, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$line:I

    iput p6, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$pid:I

    iput-wide p7, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$tid:J

    iput-wide p9, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$maintid:J

    iput-object p11, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$log:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 67
    iget-object v0, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/sdk/ulog/Xlog;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$filename:Ljava/lang/String;

    iget-object v4, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$funcname:Ljava/lang/String;

    iget v5, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$line:I

    iget v6, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$pid:I

    iget-wide v7, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$tid:J

    iget-wide v9, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$maintid:J

    iget-object v11, p0, Lcom/uc/sdk/ulog/Xlog$1;->val$log:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {v1 .. v11}, Lcom/uc/sdk/ulog/Xlog;->logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    return-void
.end method
