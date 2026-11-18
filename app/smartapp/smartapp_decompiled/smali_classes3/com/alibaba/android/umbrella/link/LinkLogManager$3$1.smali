.class Lcom/alibaba/android/umbrella/link/LinkLogManager$3$1;
.super Ljava/lang/Object;
.source "LinkLogManager.java"

# interfaces
.implements Lcom/alibaba/android/umbrella/link/LinkLogCache$LinkLogConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/umbrella/link/LinkLogManager$3;->runSafety()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/umbrella/link/LinkLogCache$LinkLogConsumer<",
        "Lcom/alibaba/android/umbrella/link/LinkLogEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/android/umbrella/link/LinkLogManager$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/umbrella/link/LinkLogManager$3;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogManager$3$1;->this$1:Lcom/alibaba/android/umbrella/link/LinkLogManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V
    .locals 0

    .line 149
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/AppMonitorLogger;->logAppMonitor(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, Lcom/alibaba/android/umbrella/link/LinkLogEntity;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/umbrella/link/LinkLogManager$3$1;->consume(Lcom/alibaba/android/umbrella/link/LinkLogEntity;)V

    return-void
.end method
