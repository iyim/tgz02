.class Lcom/alibaba/analytics/core/selfmonitor/SelfChecker$1;
.super Ljava/lang/Object;
.source "SelfChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;->onChange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker$1;->this$0:Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;

    iput-object p2, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker$1;->this$0:Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;

    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
