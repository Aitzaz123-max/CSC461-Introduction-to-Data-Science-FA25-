# E-Commerce App - Screen Flow

```
┌──────────────────────────────────────────────────────────────┐
│                    E-Commerce Flutter App                     │
│                         Screen Flow                           │
└──────────────────────────────────────────────────────────────┘

                     ┌─────────────────┐
                     │   APP START     │
                     │   (main.dart)   │
                     └────────┬────────┘
                              │
                              ▼
        ┌─────────────────────────────────────────┐
        │        HOME SCREEN                      │
        │  ┌───────────────────────────────────┐  │
        │  │ E-Commerce Store     [Cart 🛒 0]  │  │
        │  └───────────────────────────────────┘  │
        │                                          │
        │  [All][Electronics][Accessories][Home]  │◄─── Category Filters
        │                                          │
        │  ┌──────────┐  ┌──────────┐            │
        │  │ Product  │  │ Product  │            │
        │  │  Image   │  │  Image   │            │◄─── Product Grid
        │  │  $99.99  │  │ $199.99  │            │
        │  │   [🛒]   │  │   [🛒]   │            │
        │  └──────────┘  └──────────┘            │
        │  ┌──────────┐  ┌──────────┐            │
        │  │ Product  │  │ Product  │            │
        │  │   ...    │  │   ...    │            │
        │  └──────────┘  └──────────┘            │
        └───────┬──────────────────┬──────────────┘
                │                  │
       Tap Product              Tap Cart
                │                  │
                ▼                  ▼
    ┌────────────────────┐    ┌──────────────────────┐
    │ PRODUCT DETAIL     │    │  SHOPPING CART       │
    │ ┌────────────────┐ │    │ ┌──────────────────┐ │
    │ │  [<] Product   │ │    │ │ [<] Shopping Cart│ │
    │ └────────────────┘ │    │ └──────────────────┘ │
    │                    │    │                      │
    │  [Product Image]   │    │ ┌─── Item 1 ────┐   │
    │                    │    │ │ [img] Product  │   │
    │  Product Name      │    │ │ $99.99         │   │
    │  [Category]        │    │ │ [-] 1 [+] [X]  │   │
    │                    │    │ └────────────────┘   │
    │  Description       │    │ ┌─── Item 2 ────┐   │
    │  Lorem ipsum...    │    │ │ [img] Product  │   │
    │                    │    │ │ $49.99         │   │
    │  $99.99           │    │ │ [-] 2 [+] [X]  │   │
    │                    │    │ └────────────────┘   │
    │ ┌────────────────┐ │    │                      │
    │ │[🛒] Add to Cart│ │    │ ──────────────────── │
    │ └────────────────┘ │    │ Total: $198.98       │
    └────────────────────┘    │ [   CHECKOUT   ]     │
                              └──────┬───────────────┘
                                     │
                              Tap Checkout
                                     │
                                     ▼
                          ┌────────────────────┐
                          │  ORDER PLACED ✓    │
                          │                    │
                          │  Your order of     │
                          │  $198.98 has been  │
                          │  placed!           │
                          │                    │
                          │     [   OK   ]     │
                          └────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│                      KEY FEATURES                             │
├──────────────────────────────────────────────────────────────┤
│  ✓ Browse 8 products across 3 categories                     │
│  ✓ Filter by category (All, Electronics, Accessories, Home)  │
│  ✓ View detailed product information                         │
│  ✓ Add products to cart with one tap                         │
│  ✓ Update quantities or remove items                         │
│  ✓ Real-time cart badge showing item count                   │
│  ✓ View total amount before checkout                         │
│  ✓ Complete checkout with confirmation                       │
│  ✓ Responsive Material Design UI                             │
│  ✓ Smooth navigation between screens                         │
└──────────────────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────────────────┐
│                   TECHNICAL ARCHITECTURE                      │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  ┌─────────────────────────────────────────────────────┐    │
│  │                  Presentation Layer                  │    │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐          │    │
│  │  │   Home   │  │  Detail  │  │   Cart   │          │    │
│  │  │  Screen  │  │  Screen  │  │  Screen  │          │    │
│  │  └──────────┘  └──────────┘  └──────────┘          │    │
│  │         ▲              ▲             ▲               │    │
│  │         └──────────────┴─────────────┘               │    │
│  │                       │                               │    │
│  │              ┌────────▼────────┐                     │    │
│  │              │   Product Card  │                     │    │
│  │              │     Widget      │                     │    │
│  │              └─────────────────┘                     │    │
│  └──────────────────────┬──────────────────────────────┘    │
│                         │                                    │
│  ┌──────────────────────▼──────────────────────────────┐    │
│  │              State Management Layer                  │    │
│  │                  (Provider)                          │    │
│  │            ┌─────────────────────┐                   │    │
│  │            │   Cart Provider     │                   │    │
│  │            │  - addItem()        │                   │    │
│  │            │  - removeItem()     │                   │    │
│  │            │  - updateQuantity() │                   │    │
│  │            │  - totalAmount      │                   │    │
│  │            └─────────────────────┘                   │    │
│  └──────────────────────┬──────────────────────────────┘    │
│                         │                                    │
│  ┌──────────────────────▼──────────────────────────────┐    │
│  │                   Data Layer                         │    │
│  │  ┌──────────┐  ┌──────────┐  ┌──────────┐          │    │
│  │  │ Product  │  │ CartItem │  │ Product  │          │    │
│  │  │  Model   │  │  Model   │  │   Data   │          │    │
│  │  └──────────┘  └──────────┘  └──────────┘          │    │
│  └─────────────────────────────────────────────────────┘    │
│                                                               │
└──────────────────────────────────────────────────────────────┘
```

## Navigation Flow

1. **App Launch** → Home Screen (Product Grid)
2. **Tap Product Card** → Product Detail Screen
3. **Tap Add to Cart** → Add to cart + Show SnackBar
4. **Tap Back** → Return to Home Screen
5. **Tap Cart Icon** → Shopping Cart Screen
6. **Tap +/-** → Update quantity
7. **Tap Delete** → Remove item
8. **Tap Checkout** → Show confirmation dialog
9. **Tap OK** → Clear cart + Return to Home

## State Flow

```
User Action → CartProvider → notifyListeners() → UI Updates
```

Example:
```
Tap "Add to Cart" 
  → CartProvider.addItem(product)
  → Cart items list updated
  → notifyListeners() called
  → All Consumer widgets rebuild
  → Cart badge updates
  → SnackBar appears
```
