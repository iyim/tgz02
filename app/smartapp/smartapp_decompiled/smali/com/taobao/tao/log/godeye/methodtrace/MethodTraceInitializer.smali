.class public Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceInitializer;
.super Ljava/lang/Object;
.source "MethodTraceInitializer.java"

# interfaces
.implements Lcom/taobao/tao/log/godeye/api/plugin/IPluginInitializerContextAware;


# static fields
.field static sApplication:Landroid/app/Application;

.field public static sGodeye:Lcom/taobao/tao/log/godeye/api/control/IGodeye;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public init(Landroid/app/Application;Lcom/taobao/tao/log/godeye/api/control/IGodeye;)V
    .locals 0

    .line 23
    sput-object p1, Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceInitializer;->sApplication:Landroid/app/Application;

    .line 24
    sput-object p2, Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceInitializer;->sGodeye:Lcom/taobao/tao/log/godeye/api/control/IGodeye;

    .line 27
    new-instance p1, Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController;

    invoke-direct {p1}, Lcom/taobao/tao/log/godeye/methodtrace/MethodTraceController;-><init>()V

    invoke-interface {p2, p1}, Lcom/taobao/tao/log/godeye/api/control/IGodeye;->registerCommandController(Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
