.class Lcom/alibaba/analytics/core/Variables$2;
.super Ljava/lang/Object;
.source "Variables.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/Variables;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/Variables;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/Variables;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables$2;->this$0:Lcom/alibaba/analytics/core/Variables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables$2;->this$0:Lcom/alibaba/analytics/core/Variables;

    invoke-static {v0}, Lcom/alibaba/analytics/core/Variables;->access$200(Lcom/alibaba/analytics/core/Variables;)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables$2;->this$0:Lcom/alibaba/analytics/core/Variables;

    invoke-static {v0}, Lcom/alibaba/analytics/core/Variables;->access$300(Lcom/alibaba/analytics/core/Variables;)V

    return-void
.end method
