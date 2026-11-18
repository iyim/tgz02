.class public final Lcom/alibaba/ailabs/appbox/childmodel/common/_ContextUtils;
.super Ljava/lang/Object;
.source "_ContextUtils.java"


# static fields
.field private static sContext:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bind(Landroid/app/Application;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/alibaba/ailabs/appbox/childmodel/common/_ContextUtils;->sContext:Landroid/app/Application;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static get()Landroid/app/Application;
    .locals 1

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/appbox/childmodel/common/_ContextUtils;->sContext:Landroid/app/Application;

    return-object v0
.end method
