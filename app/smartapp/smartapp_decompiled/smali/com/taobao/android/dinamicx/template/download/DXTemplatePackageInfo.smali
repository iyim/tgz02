.class public Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;
.super Ljava/lang/Object;
.source "DXTemplatePackageInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mainFilePath:Ljava/lang/String;

.field public subFilePathDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected clone()Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;
    .locals 2

    .line 13
    new-instance v0, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;->mainFilePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;->mainFilePath:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;->subFilePathDict:Ljava/util/Map;

    iput-object v1, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;->subFilePathDict:Ljava/util/Map;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;->clone()Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

    move-result-object v0

    return-object v0
.end method
