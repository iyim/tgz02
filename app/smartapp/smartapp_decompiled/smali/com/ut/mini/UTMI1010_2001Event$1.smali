.class Lcom/ut/mini/UTMI1010_2001Event$1;
.super Ljava/lang/Object;
.source "UTMI1010_2001Event.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/UTMI1010_2001Event;->onSwitchBackgroundDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/UTMI1010_2001Event;


# direct methods
.method constructor <init>(Lcom/ut/mini/UTMI1010_2001Event;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ut/mini/UTMI1010_2001Event$1;->this$0:Lcom/ut/mini/UTMI1010_2001Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 70
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->dispatchLocalHits()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
