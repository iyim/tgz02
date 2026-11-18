.class Lcom/taobao/android/dinamicx/template/DXTemplateDBManager$DXTemplateDBManagerHolder;
.super Ljava/lang/Object;
.source "DXTemplateDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DXTemplateDBManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 177
    new-instance v0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;-><init>(Lcom/taobao/android/dinamicx/template/DXTemplateDBManager$1;)V

    sput-object v0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager$DXTemplateDBManagerHolder;->instance:Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;
    .locals 1

    .line 176
    sget-object v0, Lcom/taobao/android/dinamicx/template/DXTemplateDBManager$DXTemplateDBManagerHolder;->instance:Lcom/taobao/android/dinamicx/template/DXTemplateDBManager;

    return-object v0
.end method
