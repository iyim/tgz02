.class Lcom/alibaba/ailabs/basedomain/MainApplication$2;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/MainApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/MainApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/MainApplication;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/MainApplication$2;->this$0:Lcom/alibaba/ailabs/basedomain/MainApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 110
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->clearValidFile()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
