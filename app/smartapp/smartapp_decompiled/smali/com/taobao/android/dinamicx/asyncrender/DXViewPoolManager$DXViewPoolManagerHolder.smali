.class Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager$DXViewPoolManagerHolder;
.super Ljava/lang/Object;
.source "DXViewPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DXViewPoolManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager$DXViewPoolManagerHolder;->INSTANCE:Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager$DXViewPoolManagerHolder;->INSTANCE:Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;

    return-object v0
.end method
