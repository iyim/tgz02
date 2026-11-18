.class Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager$SingletonHolder;
.super Ljava/lang/Object;
.source "DXTemplateInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;-><init>(Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager$1;)V

    sput-object v0, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager$SingletonHolder;->INSTANCE:Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;
    .locals 1

    .line 69
    sget-object v0, Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager$SingletonHolder;->INSTANCE:Lcom/taobao/android/dinamicx/template/DXTemplateInfoManager;

    return-object v0
.end method
