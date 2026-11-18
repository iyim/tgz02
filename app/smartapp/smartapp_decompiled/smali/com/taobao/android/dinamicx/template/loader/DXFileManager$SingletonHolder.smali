.class Lcom/taobao/android/dinamicx/template/loader/DXFileManager$SingletonHolder;
.super Ljava/lang/Object;
.source "DXFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/template/loader/DXFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/android/dinamicx/template/loader/DXFileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/loader/DXFileManager;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager$SingletonHolder;->INSTANCE:Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/taobao/android/dinamicx/template/loader/DXFileManager;
    .locals 1

    .line 35
    sget-object v0, Lcom/taobao/android/dinamicx/template/loader/DXFileManager$SingletonHolder;->INSTANCE:Lcom/taobao/android/dinamicx/template/loader/DXFileManager;

    return-object v0
.end method
