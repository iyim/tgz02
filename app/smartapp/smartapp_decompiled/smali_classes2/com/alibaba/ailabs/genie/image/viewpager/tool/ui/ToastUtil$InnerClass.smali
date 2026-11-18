.class Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$InnerClass;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClass"
.end annotation


# static fields
.field private static instance:Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$InnerClass;->instance:Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;
    .locals 1

    .line 41
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil$InnerClass;->instance:Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    return-object v0
.end method
