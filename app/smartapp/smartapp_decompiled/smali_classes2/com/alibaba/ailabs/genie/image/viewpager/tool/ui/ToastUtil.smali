.class public Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$InnerClass;
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->HANDLER:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;
    .locals 1

    .line 20
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$InnerClass;->access$000()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public _long(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$2;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public _short(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 24
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
