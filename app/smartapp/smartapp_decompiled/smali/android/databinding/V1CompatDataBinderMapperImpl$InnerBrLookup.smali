.class Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;
.super Ljava/lang/Object;
.source "V1CompatDataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/V1CompatDataBinderMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerBrLookup"
.end annotation


# static fields
.field static final sKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1292
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    .line 1294
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1295
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1296
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "contact"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1297
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "contactsitem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1298
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string/jumbo v2, "viewModel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1299
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "relationship"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1300
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1301
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "callrecorditem"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1302
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "device"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1303
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "contacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
